[Setup]
AppName=Robert Do3Think ASCOM Camera Driver
AppVersion=1.1.2
AppPublisher=RobertDo3Think
DefaultDirName={autopf}\RobertDo3Think ASCOM Camera Driver
DefaultGroupName=RobertDo3Think ASCOM Camera Driver
OutputDir=..\dist
OutputBaseFilename=RobertDo3Think_ASCOM_Camera_Driver_Setup_1.1.2
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=

[Files]
Source: "..\bin\Release\ASCOM.RobertDo3Think_USB3_12M_Camera.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.RobertDo3Think_USB3_12M_Camera.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\DVPCameraCS.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Astrometry.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Attributes.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Controls.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.DeviceInterfaces.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Exceptions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.SettingsProvider.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Utilities.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release\ASCOM.Utilities.Video.dll"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\RobertDo3Think ASCOM Camera Driver"; Filename: "{app}\ASCOM.RobertDo3Think_USB3_12M_Camera.exe"

[Run]
Filename: "{app}\ASCOM.RobertDo3Think_USB3_12M_Camera.exe"; Parameters: "/register"; StatusMsg: "Registering ASCOM camera driver..."; Flags: runhidden waituntilterminated

[UninstallRun]
Filename: "{app}\ASCOM.RobertDo3Think_USB3_12M_Camera.exe"; Parameters: "/unregister"; RunOnceId: "UnregisterDriver"; Flags: runhidden waituntilterminated
