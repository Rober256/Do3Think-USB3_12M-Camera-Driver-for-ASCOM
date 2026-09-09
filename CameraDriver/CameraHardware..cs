// ASCOM Camera hardware class for RobertU3s1021
//
// Description:	 Roberts U3s1021 Camdriver for ASCOM
//
// Implements:	ASCOM Camera interface version: V3
// Author:		Robert256 
//

using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using ASCOM;
using ASCOM.Astrometry;
using ASCOM.Astrometry.AstroUtils;
using ASCOM.Astrometry.NOVAS;
using ASCOM.DeviceInterface;
using ASCOM.Utilities;
using DVPCameraType;

namespace ASCOM.RobertDo3Think_USB3_12M_Camera.Camera
{
    //
    // TODO Replace the not implemented exceptions with code to implement the function or throw the appropriate ASCOM exception.
    //

    /// <summary>
    /// ASCOM Camera hardware class for RobertDo3Think_USB3_12M_Camera.
    /// </summary>
    [HardwareClass()] // Class attribute flag this as a device hardware class that needs to be disposed by the local server when it exits.
    internal static class CameraHardware
    {
        // Constants used for Profile persistence
        internal const string comPortProfileName = "COM Port";
        internal const string comPortDefault = "COM1";
        internal const string traceStateProfileName = "Trace Level";
        internal const string traceStateDefault = "true";

        private static string DriverProgId = ""; // ASCOM DeviceID (COM ProgID) for this driver, the value is set by the driver's class initialiser.
        private static string DriverDescription = "Roberts U3s1021 CamDriver"; // The value is set by the driver's class initialiser.
        internal static string comPort; // COM port name (if required)
        private static volatile bool connectedState; // Logical client connection state; SDK recovery may temporarily replace the native handle.
        private static bool runOnce = false; // Flag to enable "one-off" activities only to run once.
        internal static Util utilities; // ASCOM Utilities object for use as required
        internal static AstroUtils astroUtilities; // ASCOM AstroUtilities object for use as required
        internal static TraceLogger tl; // Local server's trace logger object for diagnostic log with information that you specify
        internal static uint handle = 0; //DVP SDK 需要定义相机句柄表示连接的相机，如果是只连接一个相机，应该是默认为0即可
        private static string cameraFriendlyName = string.Empty;
        private static string cameraSerialNumber = string.Empty;
        internal const string driverversion = "0.1";
        private static double LastDuration = -1.0;
        /// <summary>
        /// Initializes a new instance of the device Hardware class.
        /// </summary>
        static CameraHardware()
        {
            try
            {
                // Create the hardware trace logger in the static initialiser.
                // All other initialisation should go in the InitialiseHardware method.
                tl = new TraceLogger("", "RobertDo3Think_USB3_12M_Camera.Hardware");

                // DriverProgId has to be set here because it used by ReadProfile to get the TraceState flag.
                DriverProgId = Camera.DriverProgId; // Get this device's ProgID so that it can be used to read the Profile configuration values

                // ReadProfile has to go here before anything is written to the log because it loads the TraceLogger enable / disable state.
                ReadProfile(); // Read device configuration from the ASCOM Profile store, including the trace state

                LogMessage("CameraHardware", $"Static initialiser completed.");
            }
            catch (Exception ex)
            {
                try { LogMessage("CameraHardware", $"Initialisation exception: {ex}"); } catch { }
                MessageBox.Show($"{ex.Message}", "Exception creating ASCOM.RobertDo3Think_USB3_12M_Camera.Camera", MessageBoxButtons.OK, MessageBoxIcon.Error);
                throw;
            }
        }

        /// <summary>
        /// Place device initialisation code here that delivers the selected ASCOM <see cref="Devices."/>
        /// </summary>
        /// <remarks>Called every time a new instance of the driver is created.</remarks>
        internal static void InitialiseHardware()
        {
            // This method will be called every time a new ASCOM client loads your driver
            LogMessage("InitialiseHardware", $"Start.");

            // Make sure that "one off" activities are only undertaken once
            if (runOnce == false)
            {
                LogMessage("InitialiseHardware", $"Starting one-off initialisation.");

                DriverDescription = Camera.DriverDescription; // Get this device's Chooser description

                LogMessage("InitialiseHardware", $"ProgID: {DriverProgId}, Description: {DriverDescription}");

                connectedState = false; // Initialise connected to false
                utilities = new Util(); //Initialise ASCOM Utilities object
                astroUtilities = new AstroUtils(); // Initialise ASCOM Astronomy Utilities object

                LogMessage("InitialiseHardware", "Completed basic initialisation");

                // Add your own "one off" device initialisation here e.g. validating existence of hardware and setting up communications

                LogMessage("InitialiseHardware", $"One-off initialisation complete.");
                runOnce = true; // Set the flag to ensure that this code is not run again
            }
        }

        // PUBLIC COM INTERFACE ICameraV3 IMPLEMENTATION

        #region Common properties and methods.

        /// <summary>
        /// Displays the Setup Dialogue form.
        /// If the user clicks the OK button to dismiss the form, then
        /// the new settings are saved, otherwise the old values are reloaded.
        /// THIS IS THE ONLY PLACE WHERE SHOWING USER INTERFACE IS ALLOWED!
        /// </summary>
        public static void SetupDialog()
        {
            // Don't permit the setup dialogue if already connected
            if (IsConnected)
                MessageBox.Show("Already connected, just press OK");

            using (SetupDialogForm F = new SetupDialogForm(tl))
            {
                var result = F.ShowDialog();
                if (result == DialogResult.OK)
                {
                    WriteProfile(); // Persist device configuration values to the ASCOM Profile store
                }
            }
        }

        /// <summary>Returns the list of custom action names supported by this driver.</summary>
        /// <value>An ArrayList of strings (SafeArray collection) containing the names of supported actions.</value>
        public static ArrayList SupportedActions
        {
            get
            {
                LogMessage("SupportedActions Get", "Returning empty ArrayList");
                return new ArrayList();
            }
        }

        /// <summary>Invokes the specified device-specific custom action.</summary>
        /// <param name="ActionName">A well known name agreed by interested parties that represents the action to be carried out.</param>
        /// <param name="ActionParameters">List of required parameters or an <see cref="String.Empty">Empty String</see> if none are required.</param>
        /// <returns>A string response. The meaning of returned strings is set by the driver author.
        /// <para>Suppose filter wheels start to appear with automatic wheel changers; new actions could be <c>QueryWheels</c> and <c>SelectWheel</c>. The former returning a formatted list
        /// of wheel names and the second taking a wheel name and making the change, returning appropriate values to indicate success or failure.</para>
        /// </returns>
        public static string Action(string actionName, string actionParameters)
        {
            LogMessage("Action", $"Action {actionName}, parameters {actionParameters} is not implemented");
            throw new MethodNotImplementedException("Action");
        }

        /// <summary>
        /// Transmits an arbitrary string to the device and does not wait for a response.
        /// Optionally, protocol framing characters may be added to the string before transmission.
        /// </summary>
        /// <param name="Command">The literal command string to be transmitted.</param>
        /// <param name="Raw">
        /// if set to <c>true</c> the string is transmitted 'as-is'.
        /// If set to <c>false</c> then protocol framing characters may be added prior to transmission.
        /// </param>
        public static void CommandBlind(string command, bool raw)
        {
            CheckConnected("CommandBlind");
            // TODO The optional CommandBlind method should either be implemented OR throw a MethodNotImplementedException
            // If implemented, CommandBlind must send the supplied command to the mount and return immediately without waiting for a response

            throw new MethodNotImplementedException($"CommandBlind - Command:{command}, Raw: {raw}.");
        }

        /// <summary>
        /// Transmits an arbitrary string to the device and waits for a boolean response.
        /// Optionally, protocol framing characters may be added to the string before transmission.
        /// </summary>
        /// <param name="Command">The literal command string to be transmitted.</param>
        /// <param name="Raw">
        /// if set to <c>true</c> the string is transmitted 'as-is'.
        /// If set to <c>false</c> then protocol framing characters may be added prior to transmission.
        /// </param>
        /// <returns>
        /// Returns the interpreted boolean response received from the device.
        /// </returns>
        public static bool CommandBool(string command, bool raw)
        {
            CheckConnected("CommandBool");
            // TODO The optional CommandBool method should either be implemented OR throw a MethodNotImplementedException
            // If implemented, CommandBool must send the supplied command to the mount, wait for a response and parse this to return a True or False value

            throw new MethodNotImplementedException($"CommandBool - Command:{command}, Raw: {raw}.");
        }

        /// <summary>
        /// Transmits an arbitrary string to the device and waits for a string response.
        /// Optionally, protocol framing characters may be added to the string before transmission.
        /// </summary>
        /// <param name="Command">The literal command string to be transmitted.</param>
        /// <param name="Raw">
        /// if set to <c>true</c> the string is transmitted 'as-is'.
        /// If set to <c>false</c> then protocol framing characters may be added prior to transmission.
        /// </param>
        /// <returns>
        /// Returns the string response received from the device.
        /// </returns>
        public static string CommandString(string command, bool raw)
        {
            CheckConnected("CommandString");
            // TODO The optional CommandString method should either be implemented OR throw a MethodNotImplementedException
            // If implemented, CommandString must send the supplied command to the mount and wait for a response before returning this to the client

            throw new MethodNotImplementedException($"CommandString - Command:{command}, Raw: {raw}.");
        }

        /// <summary>
        /// Deterministically release both managed and unmanaged resources that are used by this class.
        /// </summary>
        /// <remarks>
        /// TODO: Release any managed or unmanaged resources that are used in this class.
        /// 
        /// Do not call this method from the Dispose method in your driver class.
        ///
        /// This is because this hardware class is decorated with the <see cref="HardwareClassAttribute"/> attribute and this Dispose() method will be called 
        /// automatically by the  local server executable when it is irretrievably shutting down. This gives you the opportunity to release managed and unmanaged 
        /// resources in a timely fashion and avoid any time delay between local server close down and garbage collection by the .NET runtime.
        ///
        /// For the same reason, do not call the SharedResources.Dispose() method from this method. Any resources used in the static shared resources class
        /// itself should be released in the SharedResources.Dispose() method as usual. The SharedResources.Dispose() method will be called automatically 
        /// by the local server just before it shuts down.
        /// 
        /// </remarks>
        public static void Dispose()
        {
            try { LogMessage("Dispose", $"Disposing of assets and closing down."); } catch { }

            try
            {
                // Clean up the trace logger and utility objects
                tl.Enabled = false;
                tl.Dispose();
                tl = null;
            }
            catch { }

            try
            {
                utilities.Dispose();
                utilities = null;
            }
            catch { }

            try
            {
                astroUtilities.Dispose();
                astroUtilities = null;
            }
            catch { }
        }

        /// <summary>
        /// Set True to connect to the device hardware. Set False to disconnect from the device hardware.
        /// You can also read the property to check whether it is connected. This reports the current hardware state.
        /// </summary>
        /// <value><c>true</c> if connected to the hardware; otherwise, <c>false</c>.</value>
        public static bool Connected
        {
            get
            {
                LogMessage("Connected", $"Get {IsConnected}");
                return IsConnected;
            }
            set
            {
                LogMessage("Connected", $"Set {value}");
                if (value == IsConnected)
                    return;

                if (value)
                {
                    // Connect Camera
                    LogMessage("Connected Set", $"Connecting to port {comPort}");
                    try
                    {
                        CameraHardware.handle = OpenPreferredCamera("initial connection");
                        bool online = false;
                        CheckStatus(DVPCamera.dvpIsOnline(CameraHardware.handle, ref online), "dvpIsOnline");
                        if (!online) throw new NotConnectedException("The DVP camera is not online.");

                        lock (cameraLock)
                        {
                            ResetCapturedFrame();
                            captureFailureMessage = string.Empty;
                            captureRecoveryInProgress = false;
                            requestedCaptureDuration = ExposureMin;
                            ConfigureManualExposure(requestedCaptureDuration);
                            ConfigureAnalogGain(requestedGain);
                            configuredCaptureRequestDuration = requestedCaptureDuration;
                            appliedCaptureDuration = CameraHardware.LastDuration;
                            appliedGain = requestedGain;
                            StartFreeRunStream();
                            captureSignature = BuildCaptureSignature();
                            StartCaptureThread();
                            connectedState = true;
                        }
                        LogMessage("Connected Set", "Connected to device");
                    }
                    catch
                    {
                        captureThreadStop = true;
                        connectedState = false;
                        if (IsValidHandle(CameraHardware.handle))
                        {
                            try { DVPCamera.dvpStop(CameraHardware.handle); } catch { }
                            try { DVPCamera.dvpClose(CameraHardware.handle); } catch { }
                        }
                        CameraHardware.handle = 0;
                        throw;
                    }
                }
                else
                {
                    // Disconnect Camera
                    LogMessage("Disconnected Set", $"Disconnecting from port {comPort}");
                    // Reject new client work immediately. The capture thread may currently be
                    // between dvpClose and dvpOpen as part of an internal recovery.
                    connectedState = false;
                    StopStreamIfStarted();
                    dvpStatus closeStatus = DVPCamera.dvpClose(CameraHardware.handle);
                    if (closeStatus != dvpStatus.DVP_STATUS_OK)
                    {
                        LogMessage("dvpClose", $"Close returned {closeStatus}; clearing the local handle so a later connection can start cleanly.");
                    }
                    CameraHardware.handle = 0;
                    LogMessage("Connected Set", "Disconnecting from device");
                    lock (cameraLock)
                    {
                        connectedState = false;
                        cameraImageReady = false;
                        cameraImageDownloaded = false;
                        cameraState = CameraStates.cameraIdle;
                        requestedCaptureDuration = 0.0;
                        configuredCaptureRequestDuration = 0.0;
                        appliedCaptureDuration = 0.0;
                        appliedGain = 0;
                        captureStartupTimeoutPending = false;
                        captureRecoveryInProgress = false;
                        captureFailureMessage = string.Empty;
                        ResetCapturedFrame();
                    }
                }
            }
        }

        /// <summary>
        /// Returns a description of the device, such as manufacturer and model number. Any ASCII characters may be used.
        /// </summary>
        /// <value>The description.</value>
        public static string Description
        {
            // TODO customise this device description if required
            get
            {
                LogMessage("Description Get", DriverDescription);
                return DriverDescription;
            }
        }

        /// <summary>
        /// Descriptive and version information about this ASCOM driver.
        /// </summary>
        public static string DriverInfo
        {
            get
            {
                //Version version = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version;
                string driverInfo = $"Alpha Version:" + CameraHardware.driverversion;
                LogMessage("DriverInfo Get", driverInfo);
                return driverInfo;
            }
        }

        /// <summary>
        /// A string containing only the major and minor version of the driver formatted as 'm.n'.
        /// </summary>
        public static string DriverVersion
        {
            get
            {

                LogMessage("DriverVersion Get", CameraHardware.driverversion);
                return CameraHardware.driverversion;
            }
        }

        /// <summary>
        /// The interface version number that this device supports.
        /// </summary>
        public static short InterfaceVersion
        {
            // set by the driver wizard
            get
            {
                LogMessage("InterfaceVersion Get", "3");
                return Convert.ToInt16("3");
            }
        }

        /// <summary>
        /// The short name of the driver, for display purposes
        /// </summary>
        public static string Name
        {
            // TODO customise this device name as required
            get
            {
                string name = "U3s1201";
                LogMessage("Name Get", name);
                return name;
            }
        }

        #endregion

        #region ICamera Implementation

        private const int ccdWidth = 4088; // Constants to define the CCD pixel dimensions
        private const int ccdHeight = 3072;
        private const double pixelSize = 3.10; // Constant for the pixel physical dimension
        private const double HardwareExposureResolution = 0.000041;
        private const double HardwareMinExposureDuration = HardwareExposureResolution;
        private const double AdvertisedMaxExposureDuration = 10.0;
        private const double HardwareMaxExposureDuration = 9.999982;
        private const int SdkFrameQueueSize = 2;
        private const short MinimumGain = 90;
        private const short MaximumGain = 400;
        private const double AnalogGainScale = 80.0;
        private const int MaximumFullReopenAttempts = 3;
        private const int RecoveryRetryDelayMilliseconds = 2000;

        static private int cameraNumX = ccdWidth; // Initialise variables to hold values required for functionality
        static private int cameraNumY = ccdHeight;
        static private int cameraStartX = 0;
        static private int cameraStartY = 0;
        static private DateTime exposureStart = DateTime.MinValue;
        static private double cameraLastExposureDuration = 0.0;
        static private bool cameraImageReady = false;
        static private bool cameraImageDownloaded = false;
        static private CameraStates cameraState = CameraStates.cameraIdle;
        static private int[,] cameraImageArray;
        static private int[,] captureImageArray;
        static private object[,] cameraImageArrayVariant;
        static private byte[] frameCopyBuffer8;
        static private short[] frameCopyBuffer16;
        static private bool capturedFrameAvailable = false;
        static private double capturedFrameDuration = 0.0;
        static private DateTime capturedFrameStartTime = DateTime.MinValue;
        static private DateTime capturedFrameArrivalTime = DateTime.MinValue;
        static private short capturedFrameGain = 0;
        static private long capturedFrameVersion = 0;
        static private long deliveredFrameVersion = 0;
        static private string captureSignature = string.Empty;
        static private volatile bool captureRecoveryInProgress = false;
        static private volatile bool captureThreadStop = false;
        static private System.Threading.Thread captureThread;
        static private readonly object cameraLock = new object();
        static private double requestedCaptureDuration = 0.0;
        static private double configuredCaptureRequestDuration = 0.0;
        static private double appliedCaptureDuration = 0.0;
        static private short requestedGain = MinimumGain;
        static private short appliedGain = 0;
        static private bool captureStartupTimeoutPending = false;
        static private string captureFailureMessage = string.Empty;
        private const double FrameReadoutMarginMilliseconds = 5000.0;
        private const double MinimumFrameTimeoutMilliseconds = 5000.0;

        /// <summary>
        /// Aborts the current exposure, if any, and returns the camera to Idle state.
        /// </summary>
        static internal void AbortExposure()
        {
            LogMessage("AbortExposure", "Not implemented");
            throw new MethodNotImplementedException("AbortExposure");
        }

        /// <summary>
        /// Returns the X offset of the Bayer matrix, as defined in <see cref="SensorType" />.
        /// </summary>
        /// <returns>The Bayer colour matrix X offset, as defined in <see cref="SensorType" />.</returns>
        static internal short BayerOffsetX
        {
            get
            {
                LogMessage("BayerOffsetX Get", "0");
                return 0;
            }
        }

        /// <summary>
        /// Returns the Y offset of the Bayer matrix, as defined in <see cref="SensorType" />.
        /// </summary>
        /// <returns>The Bayer colour matrix Y offset, as defined in <see cref="SensorType" />.</returns>
        static internal short BayerOffsetY
        {
            get
            {
                LogMessage("BayerOffsetX Get", "1");
                return 1;
            }
        }

        /// <summary>
        /// Sets the binning factor for the X axis, also returns the current value.
        /// </summary>
        /// <value>The X binning value</value>
        static internal short BinX
        {
            get
            {
                LogMessage("BinX Get", "1");
                return 1;
            }
            set
            {
                LogMessage("BinX Set", value.ToString());
                if (value != 1) throw new InvalidValueException("BinX", value.ToString(), "1"); // Only 1 is valid in this simple template
            }
        }

        /// <summary>
        /// Sets the binning factor for the Y axis, also returns the current value.
        /// </summary>
        /// <value>The Y binning value.</value>
        static internal short BinY
        {
            get
            {
                LogMessage("BinY Get", "1");
                return 1;
            }
            set
            {
                LogMessage("BinY Set", value.ToString());
                if (value != 1) throw new InvalidValueException("BinY", value.ToString(), "1"); // Only 1 is valid in this simple template
            }
        }

        /// <summary>
        /// Returns the current CCD temperature in degrees Celsius.
        /// </summary>
        /// <value>The CCD temperature.</value>
        static internal double CCDTemperature
        {
            get
            {
                LogMessage("CCDTemperature Get", "Not implemented");
                throw new PropertyNotImplementedException("CCDTemperature", false);
            }
        }

        /// <summary>
        /// Returns the current camera operational state
        /// </summary>
        /// <value>The state of the camera.</value>
        static internal CameraStates CameraState
        {
            get
            {
                lock (cameraLock)
                {
                    LogMessage("CameraState Get", cameraState.ToString());
                    return cameraState;
                }
            }
        }

        /// <summary>
        /// Returns the width of the CCD camera chip in unbinned pixels.
        /// </summary>
        /// <value>The size of the camera X.</value>
        static internal int CameraXSize
        {
            get
            {
                LogMessage("CameraXSize Get", ccdWidth.ToString());
                return ccdWidth;
            }
        }

        /// <summary>
        /// Returns the height of the CCD camera chip in unbinned pixels.
        /// </summary>
        /// <value>The size of the camera Y.</value>
        static internal int CameraYSize
        {
            get
            {
                LogMessage("CameraYSize Get", ccdHeight.ToString());
                return ccdHeight;
            }
        }

        /// <summary>
        /// Returns <c>true</c> if the camera can abort exposures; <c>false</c> if not.
        /// </summary>
        /// <value>
        static internal bool CanAbortExposure
        {
            get
            {
                LogMessage("CanAbortExposure Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Returns a flag showing whether this camera supports asymmetric binning
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance can asymmetric bin; otherwise, <c>false</c>.
        /// </value>
        static internal bool CanAsymmetricBin
        {
            get
            {
                LogMessage("CanAsymmetricBin Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Camera has a fast readout mode
        /// </summary>
        /// <returns><c>true</c> when the camera supports a fast readout mode</returns>
        static internal bool CanFastReadout
        {
            get
            {
                LogMessage("CanFastReadout Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// If <c>true</c>, the camera's cooler power setting can be read.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance can get cooler power; otherwise, <c>false</c>.
        /// </value>
        static internal bool CanGetCoolerPower
        {
            get
            {
                LogMessage("CanGetCoolerPower Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Returns a flag indicating whether this camera supports pulse guiding
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance can pulse guide; otherwise, <c>false</c>.
        /// </value>
        static internal bool CanPulseGuide
        {
            get
            {
                LogMessage("CanPulseGuide Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Returns a flag indicating whether this camera supports setting the CCD temperature
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance can set CCD temperature; otherwise, <c>false</c>.
        /// </value>
        static internal bool CanSetCCDTemperature
        {
            get
            {
                LogMessage("CanSetCCDTemperature Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Returns a flag indicating whether this camera can stop an exposure that is in progress
        /// </summary>
        /// <value>
        /// <c>true</c> if the camera can stop the exposure; otherwise, <c>false</c>.
        /// </value>
        static internal bool CanStopExposure
        {
            get
            {
                LogMessage("CanStopExposure Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Turns on and off the camera cooler, and returns the current on/off state.
        /// </summary>
        /// <value><c>true</c> if the cooler is on; otherwise, <c>false</c>.</value>
        static internal bool CoolerOn
        {
            get
            {
                LogMessage("CoolerOn Get", "Not implemented");
                throw new PropertyNotImplementedException("CoolerOn", false);
            }
            set
            {
                LogMessage("CoolerOn Set", "Not implemented");
                throw new PropertyNotImplementedException("CoolerOn", true);
            }
        }

        /// <summary>
        /// Returns the present cooler power level, in percent.
        /// </summary>
        /// <value>The cooler power.</value>
        static internal double CoolerPower
        {
            get
            {
                LogMessage("CoolerPower Get", "Not implemented");
                throw new PropertyNotImplementedException("CoolerPower", false);
            }
        }

        /// <summary>
        /// Returns the gain of the camera in photoelectrons per A/D unit.
        /// </summary>
        /// <value>The electrons per ADU.</value>
        static internal double ElectronsPerADU
        {
            get
            {
                LogMessage("ElectronsPerADU Get", "Not implemented");
                throw new PropertyNotImplementedException("ElectronsPerADU", false);
            }
        }

        /// <summary>
        /// Returns the maximum exposure time supported by <see cref="StartExposure">StartExposure</see>.
        /// </summary>
        /// <returns>The maximum exposure time, in seconds, that the camera supports</returns>
        static internal double ExposureMax
        {
            get
            {
                LogMessage("ExposureMax Get", AdvertisedMaxExposureDuration.ToString());
                return AdvertisedMaxExposureDuration;
            }
        }
        /// <summary>
        /// Minimum exposure time
        /// </summary>
        /// <returns>The minimum exposure time, in seconds, that the camera supports through <see cref="StartExposure">StartExposure</see></returns>
        static internal double ExposureMin
        {
            get
            {
                LogMessage("ExposureMin Get", HardwareMinExposureDuration.ToString());
                return HardwareMinExposureDuration;
            }
        }

        /// <summary>
        /// Exposure resolution
        /// </summary>
        /// <returns>The smallest increment in exposure time supported by <see cref="StartExposure">StartExposure</see>.</returns>
        static internal double ExposureResolution
        {
            get
            {
                LogMessage("ExposureResolution Get", HardwareExposureResolution.ToString());
                return HardwareExposureResolution;
            }
        }

        /// <summary>
        /// Gets or sets Fast Readout Mode
        /// </summary>
        /// <value><c>true</c> for fast readout mode, <c>false</c> for normal mode</value>
        static internal bool FastReadout
        {
            get
            {
                LogMessage("FastReadout Get", "Not implemented");
                throw new PropertyNotImplementedException("FastReadout", false);
            }
            set
            {
                LogMessage("FastReadout Set", "Not implemented");
                throw new PropertyNotImplementedException("FastReadout", true);
            }
        }

        /// <summary>
        /// Reports the full well capacity of the camera in electrons, at the current camera settings (binning, SetupDialog settings, etc.)
        /// </summary>
        /// <value>The full well capacity.</value>
        static internal double FullWellCapacity
        {
            get
            {
                LogMessage("FullWellCapacity Get", "Not implemented");
                throw new PropertyNotImplementedException("FullWellCapacity", false);
            }
        }


        /// <summary>
        /// The camera's gain (GAIN VALUE MODE) OR the index of the selected camera gain description in the <see cref="Gains" /> array (GAINS INDEX MODE)
        /// </summary>
        /// <returns><para><b> GAIN VALUE MODE:</b> The current gain value.</para>
        /// <p style="color:red"><b>OR</b></p>
        /// <b>GAINS INDEX MODE:</b> Index into the Gains array for the current camera gain
        /// </returns>
        static internal short Gain
        {
            get
            {
                CheckConnected("Gain Get");
                lock (cameraLock)
                {
                    // Return the accepted target value. Only the capture thread is allowed to
                    // touch the SDK while streaming or recovering the native camera handle.
                    LogMessage("Gain Get", requestedGain.ToString());
                    return requestedGain;
                }
            }
            set
            {
                LogMessage("Gain Set", value.ToString());
                CheckConnected("Gain Set");
                if (value < MinimumGain || value > MaximumGain)
                {
                    throw new InvalidValueException("Gain", value.ToString(), MinimumGain.ToString(), MaximumGain.ToString());
                }

                lock (cameraLock)
                {
                    if (!connectedState) throw new NotConnectedException("Gain Set");
                    requestedGain = value;
                    System.Threading.Monitor.PulseAll(cameraLock);
                }
            }
        }

        /// <summary>
        /// Maximum <see cref="Gain" /> value of that this camera supports
        /// </summary>
        /// <returns>The maximum gain value that this camera supports</returns>
        static internal short GainMax
        {
            get
            {
                LogMessage("GainMax Get", MaximumGain.ToString());
                return MaximumGain;
            }
        }

        /// <summary>
        /// Minimum <see cref="Gain" /> value of that this camera supports
        /// </summary>
        /// <returns>The minimum gain value that this camera supports</returns>
        static internal short GainMin
        {
            get
            {
                LogMessage("GainMin Get", MinimumGain.ToString());
                return MinimumGain;
            }
        }

        /// <summary>
        /// Minimum <see cref="Gain" /> value of that this camera supports
        /// </summary>
        /// <returns>The minimum gain value that this camera supports</returns>
        static internal ArrayList Gains
        {
            get
            {
                LogMessage("Gains Get", "Not implemented");
                throw new PropertyNotImplementedException("Gains", false);
            }
        }

        /// <summary>
        /// Returns a flag indicating whether this camera has a mechanical shutter
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance has shutter; otherwise, <c>false</c>.
        /// </value>
        static internal bool HasShutter
        {
            get
            {
                LogMessage("HasShutter Get", false.ToString());
                return false;
            }
        }

        /// <summary>
        /// Returns the current heat sink temperature (called "ambient temperature" by some manufacturers) in degrees Celsius.
        /// </summary>
        /// <value>The heat sink temperature.</value>
        static internal double HeatSinkTemperature
        {
            get
            {
                LogMessage("HeatSinkTemperature Get", "Not implemented");
                throw new PropertyNotImplementedException("HeatSinkTemperature", false);
            }
        }

        /// <summary>
        /// Returns a safearray of integers of size <see cref="NumX" /> * <see cref="NumY" /> containing the pixel values from the last exposure.
        /// </summary>
        /// <value>The image array.</value>
        static internal object ImageArray
        {
            get
            {
                lock (cameraLock)
                {
                    EnsureImageDownloaded();
                    return cameraImageArray;
                }
            }
        }

        /// <summary>
        /// Returns a safearray of Variant of size <see cref="NumX" /> * <see cref="NumY" /> containing the pixel values from the last exposure.
        /// </summary>
        /// <value>The image array variant.</value>
        static internal object ImageArrayVariant
        {
            get
            {
                lock (cameraLock)
                {
                    EnsureImageDownloaded();
                    if (cameraImageArrayVariant != null)
                    {
                        return cameraImageArrayVariant;
                    }

                    cameraImageArrayVariant = new object[cameraImageArray.GetLength(0), cameraImageArray.GetLength(1)];
                    for (int y = 0; y < cameraImageArray.GetLength(1); y++)
                    {
                        for (int x = 0; x < cameraImageArray.GetLength(0); x++)
                        {
                            cameraImageArrayVariant[x, y] = cameraImageArray[x, y];
                        }

                    }
                    return cameraImageArrayVariant;
                }
            }
        }

        /// <summary>
        /// Returns a flag indicating whether the image is ready to be downloaded from the camera
        /// </summary>
        /// <value><c>true</c> if [image ready]; otherwise, <c>false</c>.</value>
        static internal bool ImageReady
        {
            get
            {
                lock (cameraLock)
                {
                    LogMessage("ImageReady Get", cameraImageReady.ToString());
                    if (cameraState == CameraStates.cameraError && !string.IsNullOrEmpty(captureFailureMessage))
                    {
                        throw new DriverException($"Camera capture failed: {captureFailureMessage}");
                    }
                    return cameraImageReady;
                }
            }
        }

        /// <summary>
        /// Returns a flag indicating whether the camera is currently in a <see cref="PulseGuide">PulseGuide</see> operation.
        /// </summary>
        /// <value>
        /// <c>true</c> if this instance is pulse guiding; otherwise, <c>false</c>.
        /// </value>
        static internal bool IsPulseGuiding
        {
            get
            {
                LogMessage("IsPulseGuiding Get", "Not implemented");
                throw new PropertyNotImplementedException("IsPulseGuiding", false);
            }
        }

        /// <summary>
        /// Reports the actual exposure duration in seconds (i.e. shutter open time).
        /// </summary>
        /// <value>The last duration of the exposure.</value>
        static internal double LastExposureDuration
        {
            get
            {
                if (!cameraImageReady)
                {
                    LogMessage("LastExposureDuration Get", "Throwing InvalidOperationException because of a call to LastExposureDuration before the first image has been taken!");
                    throw new ASCOM.InvalidOperationException("Call to LastExposureDuration before the first image has been taken!");
                }
                LogMessage("LastExposureDuration Get", cameraLastExposureDuration.ToString());
                return cameraLastExposureDuration;
            }
        }

        /// <summary>
        /// Reports the actual exposure start in the FITS-standard CCYY-MM-DDThh:mm:ss[.sss...] format.
        /// The start time must be UTC.
        /// </summary>
        /// <value>The last exposure start time in UTC.</value>
        static internal string LastExposureStartTime
        {
            get
            {
                if (!cameraImageReady)
                {
                    LogMessage("LastExposureStartTime Get", "Throwing InvalidOperationException because of a call to LastExposureStartTime before the first image has been taken!");
                    throw new ASCOM.InvalidOperationException("Call to LastExposureStartTime before the first image has been taken!");
                }
                string exposureStartString = exposureStart.ToString("yyyy-MM-ddTHH:mm:ss");
                LogMessage("LastExposureStartTime Get", exposureStartString.ToString());
                return exposureStartString;
            }
        }

        /// <summary>
        /// Reports the maximum ADU value the camera can produce.
        /// </summary>
        /// <value>The maximum ADU.</value>
        static internal int MaxADU
        {
            get
            {
                LogMessage("MaxADU Get", "65535");
                return 65535;
            }
        }

        /// <summary>
        /// Returns the maximum allowed binning for the X camera axis
        /// </summary>
        /// <value>The maximum bin X.</value>
        static internal short MaxBinX
        {
            get
            {
                LogMessage("MaxBinX Get", "1");
                return 1;
            }
        }

        /// <summary>
        /// Returns the maximum allowed binning for the Y camera axis
        /// </summary>
        /// <value>The maximum bin Y.</value>
        static internal short MaxBinY
        {
            get
            {
                LogMessage("MaxBinY Get", "1");
                return 1;
            }
        }

        /// <summary>
        /// Sets the subframe width. Also returns the current value.
        /// </summary>
        /// <value>The subframe width.</value>
        static internal int NumX
        {
            get
            {
                LogMessage("NumX Get", cameraNumX.ToString());
                return cameraNumX;
            }
            set
            {
                if (value <= 0) throw new InvalidValueException("NumX", value.ToString(), "1 upwards");
                if (cameraStartX + value > ccdWidth) throw new InvalidValueException("NumX", value.ToString(), (ccdWidth - cameraStartX).ToString());
                cameraNumX = value;
                cameraImageReady = false;
                cameraImageDownloaded = false;
                LogMessage("NumX set", value.ToString());
            }
        }

        /// <summary>
        /// Sets the subframe height. Also returns the current value.
        /// </summary>
        /// <value>The subframe height.</value>
        static internal int NumY
        {
            get
            {
                LogMessage("NumY Get", cameraNumY.ToString());
                return cameraNumY;
            }
            set
            {
                if (value <= 0) throw new InvalidValueException("NumY", value.ToString(), "1 upwards");
                if (cameraStartY + value > ccdHeight) throw new InvalidValueException("NumY", value.ToString(), (ccdHeight - cameraStartY).ToString());
                cameraNumY = value;
                cameraImageReady = false;
                cameraImageDownloaded = false;
                LogMessage("NumY set", value.ToString());
            }
        }

        /// <summary>
        /// The camera's offset (OFFSET VALUE MODE) OR the index of the selected camera offset description in the <see cref="Offsets" /> array (OFFSETS INDEX MODE)
        /// </summary>
        /// <returns><para><b> OFFSET VALUE MODE:</b> The current offset value.</para>
        /// <p style="color:red"><b>OR</b></p>
        /// <b>OFFSETS INDEX MODE:</b> Index into the Offsets array for the current camera offset
        /// </returns>
        static internal int Offset
        {
            get
            {
                LogMessage("Offset Get", "Not implemented");
                throw new PropertyNotImplementedException("Offset", false);
            }
            set
            {
                LogMessage("Offset Set", "Not implemented");
                throw new PropertyNotImplementedException("Offset", true);
            }
        }

        /// <summary>
        /// Maximum <see cref="Offset" /> value that this camera supports
        /// </summary>
        /// <returns>The maximum offset value that this camera supports</returns>
        static internal int OffsetMax
        {
            get
            {
                LogMessage("OffsetMax Get", "Not implemented");
                throw new PropertyNotImplementedException("OffsetMax", false);
            }
        }

        /// <summary>
        /// Minimum <see cref="Offset" /> value that this camera supports
        /// </summary>
        /// <returns>The minimum offset value that this camera supports</returns>
        static internal int OffsetMin
        {
            get
            {
                LogMessage("OffsetMin Get", "Not implemented");
                throw new PropertyNotImplementedException("OffsetMin", false);
            }
        }

        /// <summary>
        /// List of Offset names supported by the camera
        /// </summary>
        /// <returns>The list of supported offset names as an ArrayList of strings</returns>
        static internal ArrayList Offsets
        {
            get
            {
                LogMessage("Offsets Get", "Not implemented");
                throw new PropertyNotImplementedException("Offsets", false);
            }
        }

        /// <summary>
        /// Percent completed, Interface Version 2 and later
        /// </summary>
        /// <returns>A value between 0 and 100% indicating the completeness of this operation</returns>
        static internal short PercentCompleted
        {
            get
            {
                LogMessage("PercentCompleted Get", "Not implemented");
                throw new PropertyNotImplementedException("PercentCompleted", false);
            }
        }

        /// <summary>
        /// Returns the width of the CCD chip pixels in microns.
        /// </summary>
        /// <value>The pixel size X.</value>
        static internal double PixelSizeX
        {
            get
            {
                LogMessage("PixelSizeX Get", pixelSize.ToString());
                return pixelSize;
            }
        }

        /// <summary>
        /// Returns the height of the CCD chip pixels in microns.
        /// </summary>
        /// <value>The pixel size Y.</value>
        static internal double PixelSizeY
        {
            get
            {
                LogMessage("PixelSizeY Get", pixelSize.ToString());
                return pixelSize;
            }
        }

        /// <summary>
        /// Activates the Camera's mount control system to instruct the mount to move in a particular direction for a given period of time
        /// </summary>
        /// <param name="Direction">The direction of movement.</param>
        /// <param name="Duration">The duration of movement in milli-seconds.</param>
        static internal void PulseGuide(GuideDirections Direction, int Duration)
        {
            LogMessage("PulseGuide", "Not implemented");
            throw new MethodNotImplementedException("PulseGuide");
        }

        /// <summary>
        /// Readout mode, Interface Version 2 only
        /// </summary>
        /// <value></value>
        /// <returns>Short integer index into the <see cref="ReadoutModes">ReadoutModes</see> array of string readout mode names indicating
        /// the camera's current readout mode.</returns>
        static internal short ReadoutMode
        {
            get
            {
                LogMessage("ReadoutMode Get", "0 (RAW12)");
                return 0;
            }
            set
            {
                if (value != 0)
                {
                    throw new InvalidValueException("ReadoutMode", value.ToString(), "0");
                }
                LogMessage("ReadoutMode Set", "0 (RAW12)");
            }
        }

        /// <summary>
        /// List of available readout modes, Interface Version 2 only
        /// </summary>
        /// <returns>An ArrayList of readout mode names</returns>
        static internal ArrayList ReadoutModes
        {
            get
            {
                LogMessage("ReadoutModes Get", "Returning RAW12");
                return new ArrayList { "RAW12" };
            }
        }

        /// <summary>
        /// Sensor name, Interface Version 2 and later
        /// </summary>
        /// <returns>The name of the sensor used within the camera.</returns>
        static internal string SensorName
        {
            get
            {
                LogMessage("SensorName Get", "SHARP RJ5DY1BA0LT");
                return "SHARP RJ5DY1BA0LT";
            }
        }

        /// <summary>
        /// Type of colour information returned by the camera sensor, Interface Version 2 and later
        /// </summary>
        /// <value>The type of sensor used by the camera.</value>
        internal static SensorType SensorType
        {
            get
            {
                LogMessage("SensorType Get", SensorType.RGGB.ToString());
                return SensorType.RGGB;
            }
        }

        /// <summary>
        /// Sets the camera cooler set point in degrees Celsius, and returns the current set point.
        /// </summary>
        /// <value>The set CCD temperature.</value>
        static internal double SetCCDTemperature
        {
            get
            {
                LogMessage("SetCCDTemperature Get", "Not implemented");
                throw new PropertyNotImplementedException("SetCCDTemperature", false);
            }
            set
            {
                LogMessage("SetCCDTemperature Set", "Not implemented");
                throw new PropertyNotImplementedException("SetCCDTemperature", true);
            }
        }

        /// <summary>
        /// Starts an exposure. Use <see cref="ImageReady" /> to check when the exposure is complete.
        /// </summary>
        /// <param name="Duration">Duration of exposure in seconds, can be zero if <see cref="StartExposure">Light</see> is <c>false</c></param>
        /// <param name="Light"><c>true</c> for light frame, <c>false</c> for dark frame (ignored if no shutter)</param>
        static internal void StartExposure(double Duration, bool Light)
        {
            CheckConnected("StartExposure");
            if (Duration < HardwareMinExposureDuration || Duration > AdvertisedMaxExposureDuration)
            {
                throw new InvalidValueException("StartExposure", Duration.ToString(), HardwareMinExposureDuration.ToString(), AdvertisedMaxExposureDuration.ToString());
            }
            EnsureNativeHandleForExposure();
            ValidateSubframe();

            string captureSignature = BuildCaptureSignature();
            bool restartCapture;

            lock (cameraLock)
            {
                cameraImageReady = false;
                cameraImageDownloaded = false;
                cameraImageArrayVariant = null;
                cameraState = CameraStates.cameraExposing;
                bool captureThreadAlive = captureThread != null && captureThread.IsAlive;
                // A live capture thread exclusively owns the DVP stream. In particular, do not
                // let a client exposure call stop/start the SDK while that thread is recovering.
                restartCapture = !captureThreadAlive || (CameraHardware.captureSignature != captureSignature && !captureRecoveryInProgress);
                requestedCaptureDuration = Duration;
                if (restartCapture) captureFailureMessage = string.Empty;
            }

            try
            {
                if (restartCapture)
                {
                    StopStreamIfStarted();
                    lock (cameraLock)
                    {
                        ResetCapturedFrame();
                        ConfigureManualExposure(Duration);
                        configuredCaptureRequestDuration = Duration;
                        appliedCaptureDuration = CameraHardware.LastDuration;
                        StartFreeRunStream();
                        CameraHardware.captureSignature = captureSignature;
                        StartCaptureThread();
                    }
                }

                lock (cameraLock)
                {
                    System.Threading.Monitor.PulseAll(cameraLock);
                    if (capturedFrameAvailable && !IsCapturedFrameFreshLocked(Duration))
                    {
                        LogMessage("StartExposure", $"Discarding stale cached frame; age {(DateTime.UtcNow - capturedFrameArrivalTime).TotalSeconds:F2}s.");
                        capturedFrameAvailable = false;
                    }

                    if (capturedFrameAvailable && ExposureDurationsMatch(configuredCaptureRequestDuration, Duration) && capturedFrameGain == requestedGain && appliedGain == requestedGain)
                    {
                        PublishCapturedFrameLocked(Duration, Light);
                    }
                    else
                    {
                        LogMessage("StartExposure", $"Duration {Duration}, Light {Light}, waiting for a frame captured with the requested exposure.");
                    }
                }
            }
            catch
            {
                lock (cameraLock)
                {
                    cameraImageReady = false;
                    cameraImageDownloaded = false;
                    cameraState = CameraStates.cameraIdle;
                }
                StopStreamIfStarted();
                lock (cameraLock)
                {
                    ResetCapturedFrame();
                }
                throw;
            }
        }
        /// <summary>
        /// Sets the subframe start position for the X axis (0 based) and returns the current value.
        /// </summary>
        static internal int StartX
        {
            get
            {
                LogMessage("StartX Get", cameraStartX.ToString());
                return cameraStartX;
            }
            set
            {
                if (value < 0) throw new InvalidValueException("StartX", value.ToString(), "0 upwards");
                if (value + cameraNumX > ccdWidth) throw new InvalidValueException("StartX", value.ToString(), (ccdWidth - cameraNumX).ToString());
                cameraStartX = value;
                cameraImageReady = false;
                cameraImageDownloaded = false;
                LogMessage("StartX Set", value.ToString());
            }
        }

        /// <summary>
        /// Sets the subframe start position for the Y axis (0 based). Also returns the current value.
        /// </summary>
        static internal int StartY
        {
            get
            {
                LogMessage("StartY Get", cameraStartY.ToString());
                return cameraStartY;
            }
            set
            {
                if (value < 0) throw new InvalidValueException("StartY", value.ToString(), "0 upwards");
                if (value + cameraNumY > ccdHeight) throw new InvalidValueException("StartY", value.ToString(), (ccdHeight - cameraNumY).ToString());
                cameraStartY = value;
                cameraImageReady = false;
                cameraImageDownloaded = false;
                LogMessage("StartY set", value.ToString());
            }
        }

        /// <summary>
        /// Stops the current exposure, if any.
        /// </summary>
        static internal void StopExposure()
        {
            CheckConnected("StopExposure");
            LogMessage("StopExposure", "Not implemented because the camera cannot preserve a partial exposure");
            throw new MethodNotImplementedException("StopExposure");
        }

        /// <summary>
        /// Camera's sub-exposure interval
        /// </summary>
        static internal double SubExposureDuration
        {
            get
            {
                LogMessage("SubExposureDuration Get", "Not implemented");
                throw new PropertyNotImplementedException("SubExposureDuration", false);
            }
            set
            {
                LogMessage("SubExposureDuration Set", "Not implemented");
                throw new PropertyNotImplementedException("SubExposureDuration", true);
            }
        }

        #endregion

        #region Private properties and methods
        // Useful methods that can be used as required to help with driver development

        /// <summary>
        /// Returns true if there is a valid connection to the driver hardware
        /// </summary>
        private static bool IsConnected
        {
            get
            {
                // A full recovery intentionally closes and replaces the native handle. Reporting
                // that short interval as a disconnect makes ordinary client properties race with
                // recovery. Physical failures are reflected by setting connectedState false when
                // the reopen attempt actually fails.
                return connectedState;
            }
        }

        /// <summary>
        /// Use this function to throw an exception if we aren't connected to the hardware
        /// </summary>
        /// <param name="message"></param>
        private static void CheckConnected(string message)
        {
            if (!IsConnected)
            {
                throw new NotConnectedException(message);
            }
        }

        private static void CheckStatus(dvpStatus status, string operation)
        {
            if (status != dvpStatus.DVP_STATUS_OK)
            {
                throw new DriverException($"{operation} failed: {status}");
            }
        }

        private static uint OpenPreferredCamera(string context)
        {
            uint cameraCount = 0;
            dvpStatus refreshStatus = DVPCamera.dvpRefresh(ref cameraCount);
            bool identityKnown = !string.IsNullOrEmpty(cameraSerialNumber) || !string.IsNullOrEmpty(cameraFriendlyName);
            if (refreshStatus != dvpStatus.DVP_STATUS_OK)
            {
                if (!identityKnown || string.IsNullOrEmpty(cameraFriendlyName))
                {
                    CheckStatus(refreshStatus, $"dvpRefresh during {context}");
                }
                LogMessage("Camera Open", $"dvpRefresh during {context} returned {refreshStatus}; trying the remembered friendly name because dvpOpenByName performs its own refresh.");
                cameraCount = 0;
            }
            else if (cameraCount == 0)
            {
                if (!identityKnown || string.IsNullOrEmpty(cameraFriendlyName))
                {
                    throw new DriverException($"No DVP camera was found during {context}.");
                }
                LogMessage("Camera Open", $"dvpRefresh found no enumerable camera during {context}; trying remembered camera {cameraFriendlyName} to recover a possible half-open SDK session.");
            }

            bool selectedCameraFound = false;
            uint selectedIndex = 0;
            dvpCameraInfo selectedInfo = new dvpCameraInfo();

            for (uint index = 0; index < cameraCount; index++)
            {
                dvpCameraInfo cameraInfo = new dvpCameraInfo();
                dvpStatus enumStatus = DVPCamera.dvpEnum(index, ref cameraInfo);
                if (enumStatus != dvpStatus.DVP_STATUS_OK)
                {
                    LogMessage("Camera Open", $"dvpEnum({index}) during {context} returned {enumStatus}.");
                    continue;
                }

                bool identityMatches =
                    (!string.IsNullOrEmpty(cameraSerialNumber) && string.Equals(cameraInfo.SerialNumber, cameraSerialNumber, StringComparison.Ordinal)) ||
                    (!string.IsNullOrEmpty(cameraFriendlyName) && string.Equals(cameraInfo.FriendlyName, cameraFriendlyName, StringComparison.Ordinal));

                if ((!identityKnown && index == 0) || identityMatches)
                {
                    selectedCameraFound = true;
                    selectedIndex = index;
                    selectedInfo = cameraInfo;
                    break;
                }
            }

            if (identityKnown && !selectedCameraFound && string.IsNullOrEmpty(cameraFriendlyName))
            {
                throw new DriverException($"The previously connected DVP camera ({cameraFriendlyName}, serial {cameraSerialNumber}) was not found during {context}.");
            }

            uint candidateHandle = 0;
            dvpStatus openStatus;
            string openOperation;
            if (selectedCameraFound)
            {
                // Keep the normal and enumerable recovery path identical to the historically
                // stable non-stack driver. Name-based open is reserved for a half-open SDK
                // session that dvpRefresh can no longer enumerate.
                openOperation = $"dvpOpen({selectedIndex})";
                openStatus = DVPCamera.dvpOpen(selectedIndex, dvpOpenMode.OPEN_NORMAL, ref candidateHandle);
            }
            else if (!string.IsNullOrEmpty(cameraFriendlyName))
            {
                openOperation = $"dvpOpenByName({cameraFriendlyName})";
                openStatus = DVPCamera.dvpOpenByName(cameraFriendlyName, dvpOpenMode.OPEN_NORMAL, ref candidateHandle);
            }
            else
            {
                openOperation = $"dvpOpen({selectedIndex})";
                openStatus = DVPCamera.dvpOpen(selectedIndex, dvpOpenMode.OPEN_NORMAL, ref candidateHandle);
            }

            bool candidateValid = false;
            dvpStatus validityStatus = DVPCamera.dvpIsValid(candidateHandle, ref candidateValid);
            if ((validityStatus != dvpStatus.DVP_STATUS_OK || !candidateValid) && candidateHandle != 0)
            {
                // Some SDK/USB failures finish opening asynchronously. Give the returned handle
                // one brief chance to become valid before deciding that the session is unusable.
                System.Threading.Thread.Sleep(100);
                validityStatus = DVPCamera.dvpIsValid(candidateHandle, ref candidateValid);
            }

            if (validityStatus == dvpStatus.DVP_STATUS_OK && candidateValid)
            {
                if (openStatus != dvpStatus.DVP_STATUS_OK)
                {
                    LogMessage("Camera Open", $"{openOperation} during {context} returned {openStatus}, but candidate handle {candidateHandle} is valid; adopting it.");
                }
                CacheCameraIdentity(candidateHandle, selectedCameraFound ? selectedInfo : new dvpCameraInfo());
                return candidateHandle;
            }

            // A non-zero handle can represent a half-open SDK session even when dvpIsValid says
            // false. Closing that exact candidate avoids the next open becoming DEVICE_IS_OPENED.
            if (candidateHandle != 0)
            {
                dvpStatus cleanupStatus = DVPCamera.dvpClose(candidateHandle);
                LogMessage("Camera Open", $"Rejected candidate handle {candidateHandle}; dvpIsValid returned {validityStatus}, valid={candidateValid}; cleanup dvpClose returned {cleanupStatus}.");
            }

            if (openStatus != dvpStatus.DVP_STATUS_OK)
            {
                throw new DriverException($"{openOperation} during {context} failed: {openStatus}");
            }
            throw new DriverException($"{openOperation} during {context} returned an invalid handle (dvpIsValid: {validityStatus}).");
        }

        private static void CacheCameraIdentity(uint cameraHandle, dvpCameraInfo enumeratedInfo)
        {
            dvpCameraInfo cameraInfo = enumeratedInfo;
            if (string.IsNullOrEmpty(cameraInfo.FriendlyName) && string.IsNullOrEmpty(cameraInfo.SerialNumber))
            {
                dvpStatus infoStatus = DVPCamera.dvpGetCameraInfo(cameraHandle, ref cameraInfo);
                if (infoStatus != dvpStatus.DVP_STATUS_OK)
                {
                    LogMessage("Camera Open", $"dvpGetCameraInfo returned {infoStatus}; retaining the previously remembered camera identity.");
                }
            }

            if (!string.IsNullOrEmpty(cameraInfo.FriendlyName)) cameraFriendlyName = cameraInfo.FriendlyName;
            if (!string.IsNullOrEmpty(cameraInfo.SerialNumber)) cameraSerialNumber = cameraInfo.SerialNumber;
            LogMessage("Camera Open", $"Selected {cameraFriendlyName}, serial {cameraSerialNumber}, handle {cameraHandle}.");
        }

        private static void EnsureNativeHandleForExposure()
        {
            bool captureWorkerAlive;
            lock (cameraLock)
            {
                captureWorkerAlive = captureThread != null && captureThread.IsAlive;
            }

            // While the worker is alive it exclusively owns recovery and may temporarily set the
            // global handle to zero between close and open. The exposure request is simply queued.
            if (captureWorkerAlive || IsValidHandle(CameraHardware.handle)) return;

            LogMessage("StartExposure", "Capture worker is stopped and the native handle is invalid; attempting automatic camera reopen.");
            Exception lastException = null;
            for (int attempt = 1; attempt <= MaximumFullReopenAttempts; attempt++)
            {
                try
                {
                    CameraHardware.handle = 0;
                    CameraHardware.handle = OpenPreferredCamera($"StartExposure recovery attempt {attempt}/{MaximumFullReopenAttempts}");
                    lock (cameraLock)
                    {
                        captureFailureMessage = string.Empty;
                        captureRecoveryInProgress = false;
                    }
                    LogMessage("StartExposure", $"Automatic camera reopen succeeded on attempt {attempt}.");
                    return;
                }
                catch (Exception ex)
                {
                    lastException = ex;
                    CameraHardware.handle = 0;
                    LogMessage("StartExposure", $"Automatic camera reopen attempt {attempt}/{MaximumFullReopenAttempts} failed: {ex.Message}");
                    if (attempt < MaximumFullReopenAttempts)
                    {
                        System.Threading.Thread.Sleep(RecoveryRetryDelayMilliseconds);
                    }
                }
            }

            string failure = lastException == null ? "Unknown camera reopen failure." : lastException.Message;
            lock (cameraLock)
            {
                captureFailureMessage = failure;
                cameraImageReady = false;
                cameraImageDownloaded = false;
                cameraState = CameraStates.cameraError;
            }
            throw new DriverException($"The DVP camera handle was lost and automatic reopen failed: {failure}");
        }

        private static void LogOptionalStatus(dvpStatus status, string operation)
        {
            if (status != dvpStatus.DVP_STATUS_OK)
            {
                LogMessage(operation, $"Optional SDK call returned {status}");
            }
        }

        private static void ValidateSubframe()
        {
            if (cameraNumX <= 0) throw new InvalidValueException("NumX", cameraNumX.ToString(), "1 upwards");
            if (cameraNumY <= 0) throw new InvalidValueException("NumY", cameraNumY.ToString(), "1 upwards");
            if (cameraStartX < 0) throw new InvalidValueException("StartX", cameraStartX.ToString(), "0 upwards");
            if (cameraStartY < 0) throw new InvalidValueException("StartY", cameraStartY.ToString(), "0 upwards");
            if (cameraStartX + cameraNumX > ccdWidth) throw new InvalidValueException("StartX + NumX", (cameraStartX + cameraNumX).ToString(), ccdWidth.ToString());
            if (cameraStartY + cameraNumY > ccdHeight) throw new InvalidValueException("StartY + NumY", (cameraStartY + cameraNumY).ToString(), ccdHeight.ToString());
        }

        private static void ApplyRoi()
        {
            bool fullFrame = cameraStartX == 0 && cameraStartY == 0 && cameraNumX == ccdWidth && cameraNumY == ccdHeight;
            if (fullFrame)
            {
                CheckStatus(DVPCamera.dvpSetRoiState(CameraHardware.handle, false), "dvpSetRoiState(false)");
                return;
            }

            dvpRegion roi = new dvpRegion();
            roi.X = cameraStartX;
            roi.Y = cameraStartY;
            roi.W = cameraNumX;
            roi.H = cameraNumY;
            CheckStatus(DVPCamera.dvpSetRoi(CameraHardware.handle, roi), "dvpSetRoi");
            CheckStatus(DVPCamera.dvpSetRoiState(CameraHardware.handle, true), "dvpSetRoiState(true)");
        }

        private static void ConfigureManualExposure(double duration)
        {
            ApplyRoi();
            ConfigureExposureOnly(duration);
        }

        private static void ConfigureExposureOnly(double duration)
        {
            double exposureMicroseconds = QuantizeExposureMicroseconds(duration);
            CheckStatus(DVPCamera.dvpSetAeOperation(CameraHardware.handle, dvpAeOperation.AE_OP_OFF), "dvpSetAeOperation(AE_OP_OFF)");
            LogOptionalStatus(DVPCamera.dvpSetSoftTriggerLoopState(CameraHardware.handle, false), "dvpSetSoftTriggerLoopState(false)");
            CheckStatus(DVPCamera.dvpSetExposure(CameraHardware.handle, exposureMicroseconds), "dvpSetExposure");

            double actualExposure = 0.0;
            dvpStatus exposureStatus = DVPCamera.dvpGetExposure(CameraHardware.handle, ref actualExposure);
            if (exposureStatus == dvpStatus.DVP_STATUS_OK)
            {
                CameraHardware.LastDuration = actualExposure / 1000000.0;
                LogMessage("StartExposure", $"Exposure requested {exposureMicroseconds}us, camera set {actualExposure}us");
            }
            else
            {
                CameraHardware.LastDuration = exposureMicroseconds / 1000000.0;
                LogMessage("StartExposure", $"dvpGetExposure returned {exposureStatus}");
            }
        }

        private static double QuantizeExposureMicroseconds(double duration)
        {
            const double stepMicroseconds = 41.0;
            double requestedMicroseconds = duration * 1000000.0;
            double steps = Math.Floor((requestedMicroseconds + 0.000001) / stepMicroseconds);
            double quantizedMicroseconds = steps * stepMicroseconds;
            double minimumMicroseconds = HardwareMinExposureDuration * 1000000.0;
            double maximumMicroseconds = HardwareMaxExposureDuration * 1000000.0;
            if (quantizedMicroseconds < minimumMicroseconds) quantizedMicroseconds = minimumMicroseconds;
            if (quantizedMicroseconds > maximumMicroseconds) quantizedMicroseconds = maximumMicroseconds;
            return quantizedMicroseconds;
        }

        private static void StartFreeRunStream()
        {
            CheckStatus(DVPCamera.dvpSetTriggerState(CameraHardware.handle, false), "dvpSetTriggerState(false)");
            ConfigureFrameQueue();
            dvpStatus startStatus = DVPCamera.dvpStart(CameraHardware.handle);
            if (!IsStreamStartAccepted(startStatus))
            {
                CheckStatus(startStatus, "dvpStart");
            }
            if (startStatus != dvpStatus.DVP_STATUS_OK)
            {
                LogMessage("dvpStart", $"Accepted status {startStatus}; waiting for the first frame.");
            }
            captureStartupTimeoutPending = true;
        }

        private static bool IsStreamStartAccepted(dvpStatus status)
        {
            return status == dvpStatus.DVP_STATUS_OK ||
                   status == dvpStatus.DVP_STATUS_IN_PROCESS ||
                   status == dvpStatus.DVP_STATUS_DEVICE_IS_STARTED ||
                   status == dvpStatus.DVP_STATUS_NOT_STOPPED;
        }

        private static void ConfigureAnalogGain(short gain)
        {
            float analogGain = (float)(gain / AnalogGainScale);
            CheckStatus(DVPCamera.dvpSetAnalogGain(CameraHardware.handle, analogGain), $"dvpSetAnalogGain({gain})");
        }

        private static void StartCaptureThread()
        {
            if (captureThread != null && captureThread.IsAlive)
            {
                throw new DriverException("Refusing to start a second DVP capture thread while the previous thread is still running.");
            }

            captureThreadStop = false;
            captureThread = new System.Threading.Thread(CaptureLoop);
            captureThread.IsBackground = true;
            captureThread.Name = "DVP single-frame capture";
            captureThread.Start();
        }

        private static void CaptureLoop()
        {
            int recoveryStage = 0;
            int fullReopenAttempts = 0;
            try
            {
                while (!captureThreadStop)
                {
                    ApplyPendingExposureOnCaptureThread();
                    ApplyPendingGainOnCaptureThread();
                    if (captureThreadStop) break;

                    dvpStatus status = CaptureNextFrame();
                    if (status == dvpStatus.DVP_STATUS_OK)
                    {
                        if (captureRecoveryInProgress)
                        {
                            LogMessage("Capture", $"Recovery confirmed by a real frame after recovery stage {recoveryStage}.");
                        }
                        recoveryStage = 0;
                        fullReopenAttempts = 0;
                        captureRecoveryInProgress = false;
                        lock (cameraLock) captureFailureMessage = string.Empty;
                        continue;
                    }

                    if (captureThreadStop) break;
                    captureRecoveryInProgress = true;
                    LogMessage("Capture", $"dvpGetFrame returned {status}; recovery stage {recoveryStage}.");
                    lock (cameraLock)
                    {
                        if (cameraState == CameraStates.cameraExposing && capturedFrameAvailable && IsCapturedFrameFreshLocked(requestedCaptureDuration) && ExposureDurationsMatch(configuredCaptureRequestDuration, requestedCaptureDuration) && capturedFrameGain == requestedGain && appliedGain == requestedGain)
                        {
                            LogMessage("Capture", "Publishing the most recent valid single frame after a capture error.");
                            PublishCapturedFrameLocked(requestedCaptureDuration, true);
                        }
                    }

                    bool reopened = false;
                    while (!captureThreadStop && fullReopenAttempts < MaximumFullReopenAttempts && !reopened)
                    {
                        fullReopenAttempts++;
                        LogMessage("Capture", $"Full camera reopen attempt {fullReopenAttempts}/{MaximumFullReopenAttempts}.");
                        reopened = TryReopenCameraOnCaptureThread();
                        if (!reopened && !captureThreadStop)
                        {
                            System.Threading.Thread.Sleep(RecoveryRetryDelayMilliseconds);
                        }
                    }

                    if (reopened)
                    {
                        recoveryStage = 2;
                        continue;
                    }

                    if (captureThreadStop) break;
                    throw new DriverException($"Camera produced no frame after the permitted device reopen attempts. Last SDK status: {status}.");
                }
            }
            catch (Exception ex)
            {
                captureRecoveryInProgress = false;
                LogMessage("Capture", $"Capture thread stopped by exception: {ex}");
                // Ensure an asynchronously-starting SDK stream cannot poison the next exposure
                // with DVP_STATUS_IN_PROCESS after this worker exits.
                if (IsValidHandle(CameraHardware.handle))
                {
                    try
                    {
                        dvpStatus stopStatus = DVPCamera.dvpStop(CameraHardware.handle);
                        LogMessage("Capture", $"Failure cleanup dvpStop returned {stopStatus}.");
                    }
                    catch (Exception stopException)
                    {
                        LogMessage("Capture", $"Failure cleanup dvpStop threw: {stopException.Message}");
                    }
                }
                lock (cameraLock)
                {
                    captureFailureMessage = ex.Message;
                    cameraImageReady = false;
                    cameraImageDownloaded = false;
                    cameraState = CameraStates.cameraError;
                }
            }
            finally
            {
                captureRecoveryInProgress = false;
                lock (cameraLock)
                {
                    if (captureThread == System.Threading.Thread.CurrentThread)
                    {
                        captureThread = null;
                    }
                    System.Threading.Monitor.PulseAll(cameraLock);
                }
            }
        }

        private static void ApplyPendingExposureOnCaptureThread()
        {
            double desiredDuration;
            lock (cameraLock)
            {
                desiredDuration = requestedCaptureDuration;
                if (ExposureDurationsMatch(configuredCaptureRequestDuration, desiredDuration)) return;
            }

            ConfigureExposureOnly(desiredDuration);
            lock (cameraLock)
            {
                configuredCaptureRequestDuration = desiredDuration;
                appliedCaptureDuration = CameraHardware.LastDuration;
                ResetCapturedFrame();
                LogMessage("Capture", $"Applied queued exposure change: requested {desiredDuration}s, actual {appliedCaptureDuration}s.");
            }
        }

        private static void ApplyPendingGainOnCaptureThread()
        {
            short desiredGain;
            lock (cameraLock)
            {
                desiredGain = requestedGain;
                if (appliedGain == desiredGain) return;
            }

            ConfigureAnalogGain(desiredGain);
            lock (cameraLock)
            {
                appliedGain = desiredGain;
                InvalidateCapturedFrameCacheLocked();
                LogMessage("Capture", $"Applied queued gain change: {desiredGain} (analog {desiredGain / AnalogGainScale:F4}).");
            }
        }

        private static bool TryReopenCameraOnCaptureThread()
        {
            LogMessage("Capture", "Attempting one full camera close/open recovery.");
            try
            {
                if (captureThreadStop) return false;
                try { DVPCamera.dvpStop(CameraHardware.handle); } catch { }
                dvpStatus closeStatus = DVPCamera.dvpClose(CameraHardware.handle);
                LogMessage("Capture", $"Recovery dvpClose returned {closeStatus}.");
                CameraHardware.handle = 0;
                lock (cameraLock)
                {
                    appliedGain = 0;
                    capturedFrameAvailable = false;
                    capturedFrameGain = 0;
                }
                // The camera frequently needed a second reopen because one second was not enough
                // for its USB/SDK session to settle. Spending one extra second here is preferable
                // to another pair of ten-second startup frame waits.
                System.Threading.Thread.Sleep(2000);
                if (captureThreadStop) return false;

                CameraHardware.handle = OpenPreferredCamera("capture-thread recovery");
                bool online = false;
                CheckStatus(DVPCamera.dvpIsOnline(CameraHardware.handle, ref online), "dvpIsOnline during recovery");
                if (!online) throw new NotConnectedException("The reopened DVP camera is not online.");

                double desiredDuration;
                short desiredGain;
                lock (cameraLock)
                {
                    desiredDuration = requestedCaptureDuration;
                    desiredGain = requestedGain;
                }
                ConfigureManualExposure(desiredDuration);
                ConfigureAnalogGain(desiredGain);
                StartFreeRunStream();

                lock (cameraLock)
                {
                    configuredCaptureRequestDuration = desiredDuration;
                    appliedCaptureDuration = CameraHardware.LastDuration;
                    appliedGain = desiredGain;
                    ResetCapturedFrame();
                    captureSignature = BuildCaptureSignature();
                    captureFailureMessage = string.Empty;
                }
                LogMessage("Capture", "Full camera close/open cycle completed; recovery remains pending until a real frame is received.");
                return true;
            }
            catch (Exception ex)
            {
                LogMessage("Capture", $"Full camera close/open recovery failed: {ex}");
                try { DVPCamera.dvpStop(CameraHardware.handle); } catch { }
                try { DVPCamera.dvpClose(CameraHardware.handle); } catch { }
                CameraHardware.handle = 0;
                appliedGain = 0;
                lock (cameraLock) captureFailureMessage = ex.Message;
                return false;
            }
        }

        private static dvpStatus CaptureNextFrame()
        {
            double activeDuration;
            bool startupTimeout;
            lock (cameraLock)
            {
                activeDuration = appliedCaptureDuration;
                startupTimeout = captureStartupTimeoutPending;
            }
            uint timeout = startupTimeout
                ? CalculateStartupFrameTimeout(activeDuration)
                : CalculateFrameTimeout(activeDuration);

            // This SDK/camera combination reproducibly needs a second dvpGetFrame call after
            // dvpStart: the first startup call may time out even though the second immediately
            // begins receiving frames. Once a real frame has arrived, use only one uninterrupted
            // wait so long exposures are not split into timeout/restart cycles.
            for (int frameAttempt = 1; frameAttempt <= 2 && !captureThreadStop; frameAttempt++)
            {
                dvpFrame refRaw = new dvpFrame();
                IntPtr rawPtr = IntPtr.Zero;
                dvpStatus frameStatus = DVPCamera.dvpGetFrame(CameraHardware.handle, ref refRaw, ref rawPtr, timeout);
                if (frameStatus != dvpStatus.DVP_STATUS_OK)
                {
                    if (startupTimeout &&
                        frameStatus == dvpStatus.DVP_STATUS_TIME_OUT &&
                        frameAttempt == 1 &&
                        !captureThreadStop)
                    {
                        LogMessage("Capture", "First startup dvpGetFrame timed out; issuing the camera-required second startup call.");
                        continue;
                    }
                    return frameStatus;
                }

                lock (cameraLock)
                {
                    if (captureThreadStop) return dvpStatus.DVP_STATUS_OK;
                    captureStartupTimeoutPending = false;

                    ValidateFrame(refRaw, rawPtr);

                    double actualDuration = refRaw.fExposure > 0 ? refRaw.fExposure / 1000000.0 : 0.0;
                    if (actualDuration > 0 && activeDuration > 0 && actualDuration < activeDuration * 0.8)
                    {
                        LogMessage("Capture", $"Discarding short frame: active exposure {activeDuration}s, frame reports {actualDuration}s");
                        if (frameAttempt < 2) continue;
                        return dvpStatus.DVP_STATUS_TIME_OUT;
                    }
                    StoreCapturedFrame(refRaw, rawPtr, actualDuration > 0 ? actualDuration : activeDuration);
                    System.Threading.Monitor.PulseAll(cameraLock);
                    return dvpStatus.DVP_STATUS_OK;
                }
            }

            return captureThreadStop ? dvpStatus.DVP_STATUS_OK : dvpStatus.DVP_STATUS_TIME_OUT;
        }
        private static void StoreCapturedFrame(dvpFrame frame, IntPtr rawPtr, double duration)
        {
            EnsureImageArray();
            CopyFrameToImageArray(frame, rawPtr, captureImageArray, duration);
            capturedFrameAvailable = true;
            capturedFrameDuration = duration;
            capturedFrameStartTime = DateTime.UtcNow - TimeSpan.FromSeconds(duration > 0 ? duration : 0.0);
            capturedFrameArrivalTime = DateTime.UtcNow;
            capturedFrameGain = appliedGain;
            capturedFrameVersion++;
            captureFailureMessage = string.Empty;
            if (cameraState == CameraStates.cameraExposing && capturedFrameVersion > deliveredFrameVersion && ExposureDurationsMatch(configuredCaptureRequestDuration, requestedCaptureDuration) && capturedFrameGain == requestedGain && appliedGain == requestedGain)
            {
                PublishCapturedFrameLocked(requestedCaptureDuration, true);
            }
        }

        private static void PublishCapturedFrameLocked(double requestedDuration, bool light)
        {
            int[,] previousPublishedImage = cameraImageArray;
            cameraImageArray = captureImageArray;
            captureImageArray = previousPublishedImage;
            cameraLastExposureDuration = capturedFrameDuration > 0 ? capturedFrameDuration : appliedCaptureDuration;
            exposureStart = capturedFrameStartTime != DateTime.MinValue ? capturedFrameStartTime : DateTime.UtcNow;
            deliveredFrameVersion = capturedFrameVersion;
            capturedFrameAvailable = false;
            cameraImageReady = true;
            cameraImageDownloaded = true;
            cameraImageArrayVariant = null;
            cameraState = CameraStates.cameraIdle;
            LogMessage("StartExposure", $"Duration {requestedDuration}, Light {light}, delivered single frame, actual exposure {cameraLastExposureDuration}s, version {deliveredFrameVersion}.");
        }

        private static void ConfigureFrameQueue()
        {
            dvpBufferConfig bufferConfig = new dvpBufferConfig();
            dvpStatus getStatus = DVPCamera.dvpGetBufferConfig(CameraHardware.handle, ref bufferConfig);
            if (getStatus == dvpStatus.DVP_STATUS_OK)
            {
                bufferConfig.mode = dvpBufferMode.BUFFER_MODE_NEWEST;
                bufferConfig.uQueueSize = SdkFrameQueueSize;
                bufferConfig.bDropNew = false;
                bufferConfig.bLite = true;
                LogOptionalStatus(DVPCamera.dvpSetBufferConfig(CameraHardware.handle, bufferConfig), "dvpSetBufferConfig(NEWEST)");
            }
            else
            {
                LogMessage("dvpGetBufferConfig", $"Optional SDK call returned {getStatus}");
                LogOptionalStatus(DVPCamera.dvpSetBufferQueueSize(CameraHardware.handle, SdkFrameQueueSize), $"dvpSetBufferQueueSize({SdkFrameQueueSize})");
            }
        }

        private static string BuildCaptureSignature()
        {
            return $"{cameraStartX}|{cameraStartY}|{cameraNumX}|{cameraNumY}";
        }

        private static bool ExposureDurationsMatch(double first, double second)
        {
            double scale = Math.Max(Math.Abs(first), Math.Abs(second));
            double tolerance = Math.Max(0.000001, scale * 0.01);
            return Math.Abs(first - second) <= tolerance;
        }

        private static bool IsCapturedFrameFreshLocked(double duration)
        {
            if (!capturedFrameAvailable || capturedFrameArrivalTime == DateTime.MinValue) return false;
            double maximumAgeSeconds = Math.Max(5.0, duration + FrameReadoutMarginMilliseconds / 1000.0);
            double ageSeconds = (DateTime.UtcNow - capturedFrameArrivalTime).TotalSeconds;
            return ageSeconds >= 0.0 && ageSeconds <= maximumAgeSeconds;
        }

        private static void EnsureImageArray()
        {
            if (cameraImageArray == null || cameraImageArray.GetLength(0) != cameraNumX || cameraImageArray.GetLength(1) != cameraNumY)
            {
                cameraImageArray = new int[cameraNumX, cameraNumY];
                captureImageArray = new int[cameraNumX, cameraNumY];
            }
            else if (captureImageArray == null || captureImageArray.GetLength(0) != cameraNumX || captureImageArray.GetLength(1) != cameraNumY)
            {
                captureImageArray = new int[cameraNumX, cameraNumY];
            }
        }

        private static void ResetCapturedFrame()
        {
            InvalidateCapturedFrameCacheLocked();
            capturedFrameVersion = 0;
            deliveredFrameVersion = 0;
            if (cameraImageArray != null)
            {
                Array.Clear(cameraImageArray, 0, cameraImageArray.Length);
            }
            if (captureImageArray != null)
            {
                Array.Clear(captureImageArray, 0, captureImageArray.Length);
            }
            cameraImageArrayVariant = null;
        }

        private static void InvalidateCapturedFrameCacheLocked()
        {
            capturedFrameAvailable = false;
            capturedFrameDuration = 0.0;
            capturedFrameStartTime = DateTime.MinValue;
            capturedFrameArrivalTime = DateTime.MinValue;
            capturedFrameGain = 0;
        }

        private static void ValidateFrame(dvpFrame frame, IntPtr buffer)
        {
            if (buffer == IntPtr.Zero)
            {
                throw new DriverException("dvpGetFrame returned a null image buffer.");
            }

            if (frame.iWidth != cameraNumX || frame.iHeight != cameraNumY)
            {
                throw new DriverException($"Camera returned {frame.iWidth}x{frame.iHeight}, expected {cameraNumX}x{cameraNumY}.");
            }
        }
        private static uint CalculateFrameTimeout(double duration)
        {
            // Free-run exposure changes can leave one old/in-progress frame in the sensor and the
            // first matching frame may therefore arrive after nearly two exposure periods.
            double timeout = Math.Ceiling(duration * 2000.0) + FrameReadoutMarginMilliseconds;
            if (timeout < MinimumFrameTimeoutMilliseconds * 2.0) timeout = MinimumFrameTimeoutMilliseconds * 2.0;
            if (timeout > uint.MaxValue) timeout = uint.MaxValue;
            return (uint)timeout;
        }

        private static uint CalculateStartupFrameTimeout(double duration)
        {
            double timeout = Math.Ceiling(duration * 2000.0) + FrameReadoutMarginMilliseconds;
            // Keep the known-good two-call startup behavior. For short exposures this gives the
            // SDK two ten-second startup calls rather than one twenty-second call, which the
            // July 27 logs proved never produced a frame.
            if (timeout < 10000.0) timeout = 10000.0;
            if (timeout > uint.MaxValue) timeout = uint.MaxValue;
            return (uint)timeout;
        }

        private static void StopStreamIfStarted()
        {
            captureThreadStop = true;
            System.Threading.Thread thread = captureThread;

            // Local flags can be stale after a capture-thread failure while the SDK still reports
            // DVP_STATUS_IN_PROCESS. An idempotent stop on every valid handle makes restart safe.
            if (IsValidHandle(CameraHardware.handle))
            {
                dvpStatus stopStatus = DVPCamera.dvpStop(CameraHardware.handle);
                if (stopStatus != dvpStatus.DVP_STATUS_OK && stopStatus != dvpStatus.DVP_STATUS_NOT_STARTED && stopStatus != dvpStatus.DVP_STATUS_DEVICE_IS_STOPPED)
                {
                    LogMessage("StopStream", $"dvpStop returned {stopStatus}");
                }
            }

            if (thread != null && thread.IsAlive && thread != System.Threading.Thread.CurrentThread)
            {
                int joinTimeout = (int)Math.Min(45000.0, Math.Max(5000.0, appliedCaptureDuration * 1000.0 + 5000.0));
                if (!thread.Join(joinTimeout))
                {
                    LogMessage("StopStream", $"Capture thread did not stop within {joinTimeout}ms; refusing to discard its reference or start a second SDK reader.");
                    throw new DriverException("The DVP capture thread did not stop cleanly. A second capture thread was not started to protect camera stability.");
                }
            }

            lock (cameraLock)
            {
                if (captureThread == thread && (thread == null || !thread.IsAlive))
                {
                    captureThread = null;
                }
                captureRecoveryInProgress = false;
            }
        }
        private static void EnsureImageDownloaded()
        {
            if (!cameraImageReady)
            {
                LogMessage("ImageArray Get", "Throwing InvalidOperationException because of a call to ImageArray before the first image has been taken!");
                throw new ASCOM.InvalidOperationException("Call to ImageArray before the first image has been taken!");
            }

            if (cameraImageDownloaded && cameraImageArray != null)
            {
                return;
            }

            CheckConnected("ImageArray");
            if (!cameraImageDownloaded || cameraImageArray == null)
            {
                throw new DriverException("No downloaded image is available from the last exposure.");
            }
        }

        private static void CopyFrameToImageArray(dvpFrame frame, IntPtr buffer, int[,] image, double exposureDuration)
        {
            int width = frame.iWidth;
            int height = frame.iHeight;
            int pixelCount = checked(width * height);

            if (frame.bits == dvpBits.BITS_8)
            {
                uint requiredBytes = checked((uint)pixelCount);
                if (frame.uBytes < requiredBytes) throw new DriverException($"Frame buffer is too small for an 8-bit image: {frame.uBytes} bytes.");

                if (frameCopyBuffer8 == null || frameCopyBuffer8.Length != pixelCount) frameCopyBuffer8 = new byte[pixelCount];
                Marshal.Copy(buffer, frameCopyBuffer8, 0, pixelCount);
                Copy8BitFrame(frameCopyBuffer8, image, width, height);
                return;
            }

            if (frame.bits == dvpBits.BITS_10 || frame.bits == dvpBits.BITS_12 || frame.bits == dvpBits.BITS_14 || frame.bits == dvpBits.BITS_16)
            {
                uint requiredBytes = checked((uint)(pixelCount * 2));
                if (frame.uBytes < requiredBytes) throw new DriverException($"Packed {frame.bits} frames are not supported by this driver path.");

                if (frameCopyBuffer16 == null || frameCopyBuffer16.Length != pixelCount) frameCopyBuffer16 = new short[pixelCount];
                Marshal.Copy(buffer, frameCopyBuffer16, 0, pixelCount);
                Copy16BitFrame(frameCopyBuffer16, image, width, height, exposureDuration);
                return;
            }

            throw new DriverException($"Unsupported image bit depth: {frame.bits}");
        }
        private static void Copy8BitFrame(byte[] pixels, int[,] image, int width, int height)
        {
            if (width * height >= 1000000)
            {
                System.Threading.Tasks.Parallel.For(0, height, y =>
                {
                    int source = y * width;
                    for (int x = 0; x < width; x++)
                    {
                        image[x, y] = pixels[source + x];
                    }
                });
                return;
            }

            for (int y = 0; y < height; y++)
            {
                int source = y * width;
                for (int x = 0; x < width; x++)
                {
                    image[x, y] = pixels[source + x];
                }
            }
        }

        private static void Copy16BitFrame(short[] pixels, int[,] image, int width, int height, double exposureDuration)
        {
            DaytimeSmoothCorrection.Result correction = DaytimeSmoothCorrection.Estimate(
                pixels,
                width,
                height,
                cameraStartX,
                cameraStartY,
                exposureDuration);

            if (correction.Applied)
            {
                LogMessage(
                    "DaytimeSmooth",
                    $"Applied G2={correction.Slope:F6}*G1+{correction.Intercept:F2}, r={correction.Correlation:F6}, samples={correction.Samples}, exposure={exposureDuration:F6}s.");
            }
            else if (DaytimeSmoothCorrection.Enabled && exposureDuration <= DaytimeSmoothCorrection.MaximumExposureSeconds)
            {
                LogMessage(
                    "DaytimeSmooth",
                    $"Skipped correction: {correction.Reason}; slope={correction.Slope:F6}, r={correction.Correlation:F6}, samples={correction.Samples}.");
            }

            if (width * height >= 1000000)
            {
                System.Threading.Tasks.Parallel.For(0, height, y =>
                {
                    int source = y * width;
                    for (int x = 0; x < width; x++)
                    {
                        ushort value = unchecked((ushort)pixels[source + x]);
                        image[x, y] = DaytimeSmoothCorrection.CorrectPixel(
                            value,
                            x,
                            y,
                            cameraStartX,
                            cameraStartY,
                            correction);
                    }
                });
                return;
            }

            for (int y = 0; y < height; y++)
            {
                int source = y * width;
                for (int x = 0; x < width; x++)
                {
                    ushort value = unchecked((ushort)pixels[source + x]);
                    image[x, y] = DaytimeSmoothCorrection.CorrectPixel(
                        value,
                        x,
                        y,
                        cameraStartX,
                        cameraStartY,
                        correction);
                }
            }
        }
        public static bool IsValidHandle(uint handle)
        {
            bool bValidHandle = false;
            dvpStatus status = DVPCamera.dvpIsValid(handle, ref bValidHandle);
            if (status == dvpStatus.DVP_STATUS_OK)
            {
                return bValidHandle;
            }
            return false;
        }
        internal static void ReadProfile()
        {
            using (Profile driverProfile = new Profile())
            {
                driverProfile.DeviceType = "Camera";
                tl.Enabled = Convert.ToBoolean(driverProfile.GetValue(DriverProgId, traceStateProfileName, string.Empty, traceStateDefault));
                comPort = driverProfile.GetValue(DriverProgId, comPortProfileName, string.Empty, comPortDefault);
                DaytimeSmoothCorrection.ReadProfile(driverProfile, DriverProgId);
            }
        }

        /// <summary>
        /// Write the device configuration to the  ASCOM  Profile store
        /// </summary>
        internal static void WriteProfile()
        {
            using (Profile driverProfile = new Profile())
            {
                driverProfile.DeviceType = "Camera";
                driverProfile.WriteValue(DriverProgId, traceStateProfileName, tl.Enabled.ToString());
                driverProfile.WriteValue(DriverProgId, comPortProfileName, comPort.ToString());
                DaytimeSmoothCorrection.WriteProfile(driverProfile, DriverProgId);
            }
        }

        /// <summary>
        /// Log helper function that takes identifier and message strings
        /// </summary>
        /// <param name="identifier"></param>
        /// <param name="message"></param>
        internal static void LogMessage(string identifier, string message)
        {
            tl.LogMessageCrLf(identifier, message);
        }

        /// <summary>
        /// Log helper function that takes formatted strings and arguments
        /// </summary>
        /// <param name="identifier"></param>
        /// <param name="message"></param>
        /// <param name="args"></param>
        internal static void LogMessage(string identifier, string message, params object[] args)
        {
            var msg = string.Format(message, args);
            LogMessage(identifier, msg);
        }
        #endregion
    }
}
