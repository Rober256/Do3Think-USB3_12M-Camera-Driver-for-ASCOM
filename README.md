# Do3Think USB3 12M Camera Driver for ASCOM

这是 Do3Think USB3 12M 相机 ASCOM 驱动的早期基础版本。当前 `master` 分支主要用于保留初始的 ASCOM Local Server 驱动框架和硬件参数定义；如果需要已经接入实际相机控制、ROI、图像采集和安装包的版本，请使用文末列出的当前实现分支。

## master 分支状态

本分支对应早期的 `RobertU3s1021` 驱动，提供以下基础内容：

- ASCOM Camera Local Server 结构和 COM 注册入口。
- 相机基本参数和传感器信息定义。
- 基础曝光流程、图像数组接口以及 1x1 binning 接口。
- 驱动设置对话框和 Trace 日志开关。
- 用于 ASCOM 客户端连接测试的 ProgID：`ASCOM.RobertU3s1021.Camera`。

需要注意：本分支的曝光和图像路径仍是开发阶段的占位实现。`StartExposure` 使用基础等待逻辑模拟曝光，`ImageArray` 返回全零图像数组，并没有接入 Do3Think SDK 的真实帧读取流程。因此它不适合作为当前硬件使用的正式发布版本。

## 相机参数

| 参数 | 值 |
| --- | --- |
| 相机型号标识 | `RobertU3s1021` |
| 分辨率 | 4088 × 3072 |
| 像元尺寸 | 3.10 × 3.10 μm |
| Bayer 阵列 | RGGB |
| 传感器标识 | `SHARP RJ5DY1BA0LT` |
| 曝光范围 | 41 μs – 10 s |
| 代码声明的增益范围 | 1125 – 5000 |
| 当前 binning | 仅 1 × 1 |

上述参数是本分支代码中声明的设备信息。增益读写、曝光分辨率和多种读出模式在本分支尚未实现。

## 已知限制

以下功能在 `master` 分支中仍未实现或不适合用于实际采集：

- Do3Think SDK 的真实相机连接、取帧和图像传输。
- `Gain` 属性的读写。
- `ExposureResolution` 和 `ReadoutModes`。
- 制冷、温度读取、快速读出、Offset、PulseGuide 等扩展功能。
- `AbortExposure` 和 `StopExposure`。
- 真实硬件曝光完成状态及异常恢复。
- 安装程序和正式发布包。

## 环境要求

- Windows
- ASCOM Platform
- .NET Framework 4.7.2 开发/运行环境
- x86 构建目标

如果要在此分支继续接入真实相机，需要另外准备相应的 Do3Think SDK，并补充 SDK 引用、设备连接、曝光控制和帧转换代码。

## 编译

在仓库根目录执行：

```powershell
dotnet msbuild "Do3Think USB3_12M Camera Driver.csproj" /t:Build /p:Configuration=Release
```

输出程序名为 `ASCOM.RobertU3s1021.exe`，通常位于 `bin\Release` 目录。

## 注册与注销驱动

在输出目录中使用管理员权限打开 PowerShell：

```powershell
.\ASCOM.RobertU3s1021.exe /register
```

注销驱动：

```powershell
.\ASCOM.RobertU3s1021.exe /unregister
```

注册完成后，可以在 ASCOM Chooser 中选择：

```text
ASCOM Camera Driver for RobertU3s1021
```

也可以在支持 ASCOM 的 .NET 程序中使用以下 ProgID：

```csharp
using ASCOM.DriverAccess;

var camera = new Camera("ASCOM.RobertU3s1021.Camera");
camera.Connected = true;
// master 分支的图像接口仍是占位实现，不会返回真实相机帧。
camera.Connected = false;
camera.Dispose();
```

## 当前可用实现与安装包

当前已经实现实际相机控制、软件触发驱动、ROI、图像采集和安装脚本的版本位于：

- [当前实现分支](https://github.com/Rober256/Do3Think-USB3_12M-Camera-Driver-for-ASCOM/tree/codex/software-trigger-driver)
- [v1.1.2 发布页](https://github.com/Rober256/Do3Think-USB3_12M-Camera-Driver-for-ASCOM/releases/tag/v1.1.2)

当前实现分支使用的 ProgID 与本 `master` 分支不同，使用前请以对应分支中的 README 和发布包说明为准。

## 目录说明

- `Do3Think USB3_12M Camera Driver.csproj`：早期主驱动项目。
- `Camera.cs`：ASCOM Camera 驱动类。
- `SetupDialogForm.cs`：驱动设置对话框。
- `ReadMe.htm`：早期 ASCOM 模板说明文件。

