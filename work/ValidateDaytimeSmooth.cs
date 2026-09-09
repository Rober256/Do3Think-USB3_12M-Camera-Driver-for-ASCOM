using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Reflection;

internal static class ValidateDaytimeSmooth
{
    private sealed class FitsImage
    {
        internal int Width;
        internal int Height;
        internal double Exposure;
        internal short[] Pixels;
    }

    private static int Main(string[] args)
    {
        try
        {
            return Run(args);
        }
        catch (Exception ex)
        {
            Console.Error.WriteLine(ex.GetType().FullName + ": " + ex.Message);
            Exception inner = ex.InnerException;
            while (inner != null)
            {
                Console.Error.WriteLine("INNER " + inner.GetType().FullName + ": " + inner.Message);
                inner = inner.InnerException;
            }
            return 3;
        }
    }

    private static int Run(string[] args)
    {
        if (args.Length != 3)
        {
            Console.Error.WriteLine("usage: ValidateDaytimeSmooth driver.exe day.fit night.fit");
            return 2;
        }

        Assembly driver = Assembly.LoadFrom(Path.GetFullPath(args[0]));
        Type correction = driver.GetType(
            "ASCOM.RobertDo3Think_USB3_12M_Camera.Camera.DaytimeSmoothCorrection",
            true);
        BindingFlags staticFlags = BindingFlags.Static | BindingFlags.NonPublic;
        correction.GetProperty("Enabled", staticFlags).SetValue(null, true, null);
        correction.GetProperty("MaximumExposureSeconds", staticFlags).SetValue(null, 0.010, null);
        MethodInfo estimate = correction.GetMethod("Estimate", staticFlags);
        MethodInfo correctPixel = correction.GetMethod("CorrectPixel", staticFlags);

        int failures = 0;
        FitsImage day;
        if (File.Exists(args[1]))
        {
            day = ReadFits(args[1]);
        }
        else
        {
            Console.WriteLine("day FITS is unavailable; using a deterministic synthetic frame with the measured daytime G2/G1 response");
            day = CreateSyntheticDay();
        }
        object dayResult = estimate.Invoke(null, new object[] { day.Pixels, day.Width, day.Height, 0, 0, day.Exposure });
        bool dayApplied = PrintResult("day", day.Exposure, dayResult);
        if (!dayApplied) failures++;
        if (dayApplied)
        {
            ushort g1Input = 20000;
            ushort g2Input = (ushort)Math.Round(0.5911350 * g1Input + 66.581);
            int g1Output = (int)correctPixel.Invoke(null, new object[] { g1Input, 0, 0, 0, 0, dayResult });
            int g2Output = (int)correctPixel.Invoke(null, new object[] { g2Input, 1, 1, 0, 0, dayResult });
            int redOutput = (int)correctPixel.Invoke(null, new object[] { (ushort)9000, 0, 1, 0, 0, dayResult });
            int blueOutput = (int)correctPixel.Invoke(null, new object[] { (ushort)14000, 1, 0, 0, 0, dayResult });
            Console.WriteLine(
                "sample correction: G1 " + g1Input + "->" + g1Output +
                ", G2 " + g2Input + "->" + g2Output +
                ", R " + redOutput + ", B " + blueOutput);
            if (Math.Abs(g1Output - g2Output) > 1 || redOutput != 9000 || blueOutput != 14000) failures++;
        }

        FitsImage night;
        if (File.Exists(args[2]))
        {
            night = ReadFits(args[2]);
        }
        else
        {
            Console.WriteLine("night FITS is unavailable; using a deterministic synthetic frame with the measured nighttime G2/G1 response");
            night = CreateSyntheticNight();
        }
        object nightResult = estimate.Invoke(null, new object[] { night.Pixels, night.Width, night.Height, 0, 0, night.Exposure });
        bool nightApplied = PrintResult("night", night.Exposure, nightResult);
        if (nightApplied) failures++;

        object forcedNightResult = estimate.Invoke(null, new object[] { night.Pixels, night.Width, night.Height, 0, 0, 0.000041 });
        bool forcedNightApplied = PrintResult("night-forced-daytime", 0.000041, forcedNightResult);
        if (forcedNightApplied) failures++;

        Console.WriteLine(failures == 0 ? "VALIDATION PASSED" : "VALIDATION FAILED");
        return failures == 0 ? 0 : 1;
    }

    private static bool PrintResult(string name, double exposure, object result)
    {
        BindingFlags fields = BindingFlags.Instance | BindingFlags.NonPublic;
        Type type = result.GetType();
        bool applied = (bool)type.GetField("Applied", fields).GetValue(result);
        string reason = (string)type.GetField("Reason", fields).GetValue(result);
        double slope = (double)type.GetField("Slope", fields).GetValue(result);
        double intercept = (double)type.GetField("Intercept", fields).GetValue(result);
        double correlation = (double)type.GetField("Correlation", fields).GetValue(result);
        int samples = (int)type.GetField("Samples", fields).GetValue(result);
        Console.WriteLine(
            string.Format(
                CultureInfo.InvariantCulture,
                "{0}: exposure={1:F6}s applied={2} reason={3} slope={4:F6} intercept={5:F2} r={6:F6} samples={7}",
                name,
                exposure,
                applied,
                reason,
                slope,
                intercept,
                correlation,
                samples));
        return applied;
    }

    private static FitsImage ReadFits(string path)
    {
        Dictionary<string, string> header = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        long dataOffset = 0;
        using (FileStream stream = File.OpenRead(path))
        {
            bool end = false;
            byte[] block = new byte[2880];
            while (!end)
            {
                if (stream.Read(block, 0, block.Length) != block.Length) throw new InvalidDataException("Truncated FITS header");
                dataOffset += block.Length;
                for (int offset = 0; offset < block.Length; offset += 80)
                {
                    string card = System.Text.Encoding.ASCII.GetString(block, offset, 80);
                    string key = card.Substring(0, 8).Trim();
                    if (key == "END")
                    {
                        end = true;
                        break;
                    }
                    if (card.Substring(8, 2) == "= ")
                    {
                        header[key] = card.Substring(10).Split('/')[0].Trim().Trim('\'');
                    }
                }
            }

            int width = int.Parse(header["NAXIS1"], CultureInfo.InvariantCulture);
            int height = int.Parse(header["NAXIS2"], CultureInfo.InvariantCulture);
            if (int.Parse(header["BITPIX"], CultureInfo.InvariantCulture) != 16) throw new InvalidDataException("Expected BITPIX=16");
            int bzero = header.ContainsKey("BZERO") ? int.Parse(header["BZERO"], CultureInfo.InvariantCulture) : 0;
            double exposure = double.Parse(header["EXPTIME"].Replace('D', 'E'), CultureInfo.InvariantCulture);
            short[] pixels = new short[checked(width * height)];
            byte[] bytes = new byte[pixels.Length * 2];
            stream.Position = dataOffset;
            int read = 0;
            while (read < bytes.Length)
            {
                int count = stream.Read(bytes, read, bytes.Length - read);
                if (count == 0) throw new InvalidDataException("Truncated FITS image");
                read += count;
            }
            for (int i = 0; i < pixels.Length; i++)
            {
                short signed = unchecked((short)((bytes[i * 2] << 8) | bytes[i * 2 + 1]));
                ushort physical = unchecked((ushort)(signed + bzero));
                pixels[i] = unchecked((short)physical);
            }

            return new FitsImage { Width = width, Height = height, Exposure = exposure, Pixels = pixels };
        }
    }

    private static FitsImage CreateSyntheticDay()
    {
        const int width = 1024;
        const int height = 768;
        short[] pixels = new short[width * height];
        for (int y = 0; y < height; y += 2)
        {
            for (int x = 0; x < width; x += 2)
            {
                double sceneGreen = 1500.0 + x * 22.0 + y * 13.0 + ((x * 17 + y * 11) % 101);
                int g1 = (int)Math.Round(sceneGreen);
                int g2 = (int)Math.Round(0.5911350 * sceneGreen + 66.581 + ((x + y) % 7 - 3));
                int blue = (int)Math.Round(sceneGreen * 0.72);
                int red = (int)Math.Round(sceneGreen * 0.45);
                pixels[y * width + x] = unchecked((short)(ushort)Math.Min(65535, g1));
                pixels[y * width + x + 1] = unchecked((short)(ushort)Math.Min(65535, blue));
                pixels[(y + 1) * width + x] = unchecked((short)(ushort)Math.Min(65535, red));
                pixels[(y + 1) * width + x + 1] = unchecked((short)(ushort)Math.Min(65535, g2));
            }
        }
        return new FitsImage { Width = width, Height = height, Exposure = 0.000041, Pixels = pixels };
    }

    private static FitsImage CreateSyntheticNight()
    {
        const int width = 1024;
        const int height = 768;
        short[] pixels = new short[width * height];
        for (int y = 0; y < height; y += 2)
        {
            for (int x = 0; x < width; x += 2)
            {
                double sceneGreen = 650.0 + x * 0.65 + y * 0.38 + ((x * 13 + y * 7) % 79);
                double deterministicNoise = ((x * 37 + y * 19) % 301) - 150.0;
                int g1 = (int)Math.Round(sceneGreen);
                int g2 = (int)Math.Round(0.9526253 * sceneGreen + 16.359 + deterministicNoise);
                int blue = (int)Math.Round(sceneGreen * 0.72);
                int red = (int)Math.Round(sceneGreen * 0.45);
                pixels[y * width + x] = unchecked((short)(ushort)Math.Max(0, Math.Min(65535, g1)));
                pixels[y * width + x + 1] = unchecked((short)(ushort)Math.Max(0, Math.Min(65535, blue)));
                pixels[(y + 1) * width + x] = unchecked((short)(ushort)Math.Max(0, Math.Min(65535, red)));
                pixels[(y + 1) * width + x + 1] = unchecked((short)(ushort)Math.Max(0, Math.Min(65535, g2)));
            }
        }
        return new FitsImage { Width = width, Height = height, Exposure = 10.0, Pixels = pixels };
    }
}
