using System;
using System.Collections.Generic;
using System.Globalization;
using ASCOM.Utilities;

namespace ASCOM.RobertDo3Think_USB3_12M_Camera_Trigger.Camera
{
    /// <summary>
    /// Equalises the two native green phases in a GBRG RAW frame before it is
    /// returned through ASCOM. This removes the 2x2 daytime grid while keeping
    /// the data as a single-plane Bayer mosaic for AllSkEye to demosaic.
    /// </summary>
    internal static class DaytimeSmoothCorrection
    {
        internal const string EnabledProfileName = "Daytime Smooth Correction";
        internal const string MaximumExposureProfileName = "Daytime Smooth Maximum Exposure";
        internal const bool EnabledDefault = true;
        internal const double MaximumExposureDefault = 0.010;

        private const int SampleStride = 16;
        private const int MinimumSamples = 500;
        private const double MinimumSampleValue = 512.0;
        private const double MaximumSampleValue = 60000.0;
        private const double MinimumAcceptedSlope = 0.45;
        private const double MaximumAcceptedSlope = 1.05;
        private const double MinimumAcceptedCorrelation = 0.985;
        private const double MinimumCorrectionMagnitude = 0.015;

        internal static bool Enabled { get; set; } = EnabledDefault;
        internal static double MaximumExposureSeconds { get; set; } = MaximumExposureDefault;

        internal sealed class Result
        {
            internal bool Applied;
            internal string Reason;
            internal double Slope;
            internal double Intercept;
            internal double Correlation;
            internal int Samples;
            internal double GreenOneScale;
            internal double GreenTwoScale;
        }

        internal static Result Estimate(short[] pixels, int width, int height, int startX, int startY, double exposureSeconds)
        {
            Result result = new Result
            {
                Applied = false,
                Reason = "disabled",
                Slope = 1.0,
                GreenOneScale = 1.0,
                GreenTwoScale = 1.0
            };

            if (!Enabled) return result;
            if (exposureSeconds <= 0.0 || exposureSeconds > MaximumExposureSeconds)
            {
                result.Reason = string.Format(
                    CultureInfo.InvariantCulture,
                    "exposure {0:F6}s exceeds daytime threshold {1:F6}s",
                    exposureSeconds,
                    MaximumExposureSeconds);
                return result;
            }

            if (pixels == null || width < 8 || height < 8 || pixels.Length < width * height)
            {
                result.Reason = "invalid RAW16 buffer";
                return result;
            }

            int marginX = Math.Min(320, Math.Max(2, width / 8));
            int marginY = Math.Min(256, Math.Max(2, height / 8));
            int firstX = AlignToEvenSensorCoordinate(marginX, startX);
            int firstY = AlignToEvenSensorCoordinate(marginY, startY);
            int lastX = width - marginX - 4;
            int lastY = height - marginY - 4;

            List<double> greenOne = new List<double>();
            List<double> greenTwo = new List<double>();
            for (int y = firstY; y <= lastY; y += SampleStride)
            {
                for (int x = firstX; x <= lastX; x += SampleStride)
                {
                    double g1 = 0.0;
                    double g2 = 0.0;
                    for (int oy = 0; oy <= 2; oy += 2)
                    {
                        int rowOne = (y + oy) * width;
                        int rowTwo = (y + oy + 1) * width;
                        for (int ox = 0; ox <= 2; ox += 2)
                        {
                            g1 += unchecked((ushort)pixels[rowOne + x + ox]);
                            g2 += unchecked((ushort)pixels[rowTwo + x + ox + 1]);
                        }
                    }
                    g1 *= 0.25;
                    g2 *= 0.25;

                    if (g1 < MinimumSampleValue || g2 < MinimumSampleValue ||
                        g1 > MaximumSampleValue || g2 > MaximumSampleValue)
                    {
                        continue;
                    }

                    greenOne.Add(g1);
                    greenTwo.Add(g2);
                }
            }

            result.Samples = greenOne.Count;
            if (greenOne.Count < MinimumSamples)
            {
                result.Reason = "insufficient unsaturated daytime samples";
                return result;
            }

            Fit(greenOne, greenTwo, null, out double firstSlope, out double firstIntercept, out double firstCorrelation);

            double[] residuals = new double[greenOne.Count];
            for (int i = 0; i < residuals.Length; i++)
            {
                residuals[i] = Math.Abs(greenTwo[i] - (firstSlope * greenOne[i] + firstIntercept));
            }
            Array.Sort(residuals);
            double medianAbsoluteResidual = residuals[residuals.Length / 2];
            double residualLimit = Math.Max(64.0, medianAbsoluteResidual * 6.0);

            bool[] accepted = new bool[greenOne.Count];
            int acceptedCount = 0;
            for (int i = 0; i < accepted.Length; i++)
            {
                accepted[i] = Math.Abs(greenTwo[i] - (firstSlope * greenOne[i] + firstIntercept)) <= residualLimit;
                if (accepted[i]) acceptedCount++;
            }

            if (acceptedCount < MinimumSamples)
            {
                result.Reason = "robust fit rejected too many samples";
                return result;
            }

            Fit(greenOne, greenTwo, accepted, out double slope, out double intercept, out double correlation);
            result.Samples = acceptedCount;
            result.Slope = slope;
            result.Intercept = intercept;
            result.Correlation = correlation;

            if (slope < MinimumAcceptedSlope || slope > MaximumAcceptedSlope)
            {
                result.Reason = "estimated green-phase slope is outside the safety range";
                return result;
            }
            if (correlation < MinimumAcceptedCorrelation)
            {
                result.Reason = "green-phase correlation is too low for safe correction";
                return result;
            }
            if (Math.Abs(1.0 - slope) < MinimumCorrectionMagnitude && Math.Abs(intercept) < 64.0)
            {
                result.Reason = "green phases are already balanced";
                return result;
            }

            double geometricScale = Math.Sqrt(slope);
            result.GreenOneScale = geometricScale;
            result.GreenTwoScale = 1.0 / geometricScale;
            result.Applied = true;
            result.Reason = "applied";
            return result;
        }

        internal static int CorrectPixel(ushort value, int localX, int localY, int startX, int startY, Result result)
        {
            if (result == null || !result.Applied) return value;

            int sensorX = startX + localX;
            int sensorY = startY + localY;
            bool evenX = (sensorX & 1) == 0;
            bool evenY = (sensorY & 1) == 0;
            double corrected;

            // GBRG at the full-sensor origin: G1=(even,even), G2=(odd,odd).
            if (evenX && evenY)
            {
                corrected = value * result.GreenOneScale;
            }
            else if (!evenX && !evenY)
            {
                corrected = (value - result.Intercept) * result.GreenTwoScale;
            }
            else
            {
                return value;
            }

            if (corrected <= 0.0) return 0;
            if (corrected >= 65535.0) return 65535;
            return (int)Math.Round(corrected);
        }

        internal static void ReadProfile(Profile profile, string driverProgId)
        {
            string enabledValue = profile.GetValue(
                driverProgId,
                EnabledProfileName,
                string.Empty,
                EnabledDefault.ToString());
            if (!bool.TryParse(enabledValue, out bool enabled)) enabled = EnabledDefault;
            Enabled = enabled;

            string exposureValue = profile.GetValue(
                driverProgId,
                MaximumExposureProfileName,
                string.Empty,
                MaximumExposureDefault.ToString(CultureInfo.InvariantCulture));
            if (!double.TryParse(exposureValue, NumberStyles.Float, CultureInfo.InvariantCulture, out double maximumExposure) &&
                !double.TryParse(exposureValue, out maximumExposure))
            {
                maximumExposure = MaximumExposureDefault;
            }
            MaximumExposureSeconds = Math.Max(0.000041, Math.Min(1.0, maximumExposure));
        }

        internal static void WriteProfile(Profile profile, string driverProgId)
        {
            profile.WriteValue(driverProgId, EnabledProfileName, Enabled.ToString());
            profile.WriteValue(
                driverProgId,
                MaximumExposureProfileName,
                MaximumExposureSeconds.ToString("R", CultureInfo.InvariantCulture));
        }

        private static int AlignToEvenSensorCoordinate(int localCoordinate, int sensorStart)
        {
            return ((sensorStart + localCoordinate) & 1) == 0 ? localCoordinate : localCoordinate + 1;
        }

        private static void Fit(
            IList<double> x,
            IList<double> y,
            bool[] accepted,
            out double slope,
            out double intercept,
            out double correlation)
        {
            double count = 0.0;
            double sumX = 0.0;
            double sumY = 0.0;
            double sumXX = 0.0;
            double sumYY = 0.0;
            double sumXY = 0.0;

            for (int i = 0; i < x.Count; i++)
            {
                if (accepted != null && !accepted[i]) continue;
                double xv = x[i];
                double yv = y[i];
                count += 1.0;
                sumX += xv;
                sumY += yv;
                sumXX += xv * xv;
                sumYY += yv * yv;
                sumXY += xv * yv;
            }

            double covariance = count * sumXY - sumX * sumY;
            double varianceX = count * sumXX - sumX * sumX;
            double varianceY = count * sumYY - sumY * sumY;
            slope = varianceX > 0.0 ? covariance / varianceX : 1.0;
            intercept = count > 0.0 ? (sumY - slope * sumX) / count : 0.0;
            correlation = varianceX > 0.0 && varianceY > 0.0
                ? covariance / Math.Sqrt(varianceX * varianceY)
                : 0.0;
        }
    }
}
