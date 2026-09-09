# Do3Think USB3 12M Camera Driver for ASCOM

这是一个面向 Windows 的 ASCOM Camera V3 驱动，用于通过 Do3Think DVP SDK 控制 USB3 12M 相机（例如 U3S1021 / U3P1200H 等兼容型号）。项目同时保留了一个独立的软件触发版本，用于解决连续采集模式在曝光参数切换时可能出现的旧帧、过渡帧和等待时间问题。

## 功能概览

### 主驱动

主驱动位于仓库根目录，使用 DVP SDK 的连续采集流，并由后台采集线程负责接收和匹配帧。

- ASCOM Camera V3 / COM Local Server 驱动，支持多个 ASCOM 客户端实例共享本地服务器。
- ProgID：`ASCOM.RobertDo3Think_USB3_12M_Camera.Camera`
- ASCOM Chooser 名称：`ASCOM Camera Driver for RobertDo3Think_USB3_12M_Camera`
- 分辨率：4088 × 3072 像素；像元尺寸：3.10 μm。
- 传感器：RGGB Bayer；默认读出模式：`RAW12`。
- 曝光范围：41 μs 至 10 s；曝光分辨率：41 μs。
- 增益范围：90 至 400。
- 支持 ROI：`StartX`、`StartY`、`NumX`、`NumY`；BinX/BinY 固定为 1。
- 通过 `ImageReady`、`ImageArray` 和 `ImageArrayVariant` 获取图像。
- 对缓存帧、曝光参数变化和相机句柄异常进行保护；必要时会自动重启采集流或重新打开相机。
- 支持 `LastExposureDuration` 和 `LastExposureStartTime`。
- 16-bit RAW 图像可选用 daytime smooth correction 自动均衡两个绿色通道，减少短曝光日间图像中的 2×2 网格；算法只在满足采样数量、相关性和饱和度条件时应用，否则自动跳过。
- 支持 ASCOM Trace 日志和硬件日志。

### 独立软件触发版

软件触发版位于 [`SoftwareTriggerDriver`](SoftwareTriggerDriver/)，与主驱动使用不同的 ProgID、CLSID 和安装目录，可以并存安装。

- ProgID：`ASCOM.RobertDo3Think_USB3_12M_Camera_Trigger.Camera`
- ASCOM Chooser 名称：`RobertDo3Think USB3 12M Camera (Software Trigger)`
- 每次 `StartExposure` 只请求并交付一帧。
- 触发前清理残留帧，并等待与当前曝光参数匹配的帧。
- 采集失败时先重启触发流，仍失败时自动关闭并重新打开相机。
- `CanAbortExposure` 和 `CanStopExposure` 保持为 `false`。

这是一个独立实验版本；当前 Release 安装包只包含根目录主驱动，软件触发版需要从源码单独编译和注册。

## 系统要求

- Windows 10/11，x86 进程支持。
- ASCOM Platform，包含 Camera V3 接口和 ASCOM Chooser。
- .NET Framework 4.7.2 或更高版本。
- Do3Think 相机及其 USB3/DVP 设备驱动。
- 相机应由 DVP SDK 正常识别；仓库中包含 `DVPCameraCS.dll` 和 ASCOM 运行时引用程序集。

## 安装主驱动

1. 从 [Releases](https://github.com/Rober256/Do3Think-USB3_12M-Camera-Driver-for-ASCOM/releases) 下载最新的 `RobertDo3Think_ASCOM_Camera_Driver_Setup_*.exe`。
2. 以管理员身份运行安装程序。
3. 安装程序会将驱动安装到 `Program Files\RobertDo3Think ASCOM Camera Driver`，并自动执行 `/register` 注册 COM/ASCOM 驱动。
4. 连接相机，关闭其他正在占用该相机的 DVP/ASCOM 程序。
5. 在任意 ASCOM 客户端的 Camera Chooser 中选择：

   `ASCOM Camera Driver for RobertDo3Think_USB3_12M_Camera`

卸载安装程序时会执行 `/unregister`。如果需要手工注册，可在驱动目录的管理员 PowerShell 中运行：

```powershell
.\ASCOM.RobertDo3Think_USB3_12M_Camera.exe /register
.\ASCOM.RobertDo3Think_USB3_12M_Camera.exe /unregister
```

不要使用 `regasm` 注册这个 Local Server 可执行文件。

## 在 ASCOM 客户端中使用

典型的调用顺序是：连接、设置曝光和增益、开始曝光、等待 `ImageReady`，再读取 `ImageArray`。

```csharp
using ASCOM.DriverAccess;
using System.Threading;

using (var camera = new Camera("ASCOM.RobertDo3Think_USB3_12M_Camera.Camera"))
{
    camera.Connected = true;
    camera.Gain = 120;
    camera.StartExposure(0.010, true); // 秒，10 ms

    while (!camera.ImageReady)
    {
        Thread.Sleep(10);
    }

    int[,] image = (int[,])camera.ImageArray;
    double actualExposure = camera.LastExposureDuration;
    camera.Connected = false;
}
```

注意：不要在 `ImageReady == true` 之前读取 `ImageArray`。主驱动当前不支持中止或停止正在进行的曝光，因此客户端应检查 `CanAbortExposure` 和 `CanStopExposure`，它们都返回 `false`。

图像通过 ASCOM 返回为单平面 Bayer 数据，不会在驱动内转换成 RGB。Bayer 模式为 RGGB，客户端或后处理程序需要自行进行 debayer。

## 设置对话框

在 ASCOM Chooser 中选中驱动后打开 Setup，可以配置：

- `Trace on`：启用或关闭驱动 Trace 日志。
- `Daytime Smooth correction`：启用或关闭短曝光日间绿色通道均衡。
- `Max exposure (ms)`：daytime smooth correction 的最大适用曝光时间，默认 10 ms。

该校正只对短曝光 RAW16 数据进行安全检查后的自动估计，不满足条件时会保留原始像素值。

## 当前未实现或受限的功能

以下 ASCOM 能力当前没有实现，客户端不应依赖这些功能：

- 制冷、CCD 温度和散热器温度读取/控制。
- `AbortExposure`、`StopExposure`、`PulseGuide`。
- Fast Readout、Offset、SubExposureDuration、PercentCompleted。
- Cooler、快门和脉冲导星。
- 2× 或更高倍率的硬件 binning；当前只支持 1×1。
- 多种 Readout Mode；当前只提供 `RAW12`。

## 日志与故障排查

驱动日志通常位于：

```text
%USERPROFILE%\Documents\ASCOM\Logs\
```

重点查看以下日志：

- `ASCOM.RobertDo3Think_USB3_12M_Camera.Driver.*`
- `ASCOM.RobertDo3Think_USB3_12M_Camera.Hardware.*`
- `ASCOM.RobertDo3Think_USB3_12M_Camera.LocalServer.*`

如果连接失败或曝光超时，请依次检查：

1. DVP/USB3 设备驱动是否已安装，系统相机工具是否能识别设备。
2. USB3 连接和供电是否稳定。
3. 是否有其他程序占用相机。
4. ASCOM 客户端是否使用了正确的 ProgID。
5. 日志中是否出现 `dvpOpen`、`dvpStart`、`dvpGetFrame` 或相机恢复失败信息。

不要让主驱动和软件触发版同时连接同一台物理相机。

## 从源码构建

主驱动项目：

```powershell
dotnet msbuild .\Robert256_Do3Think_Camera_ASCOM_Driver.csproj /t:Build /p:Configuration=Release
```

软件触发版项目：

```powershell
dotnet msbuild .\SoftwareTriggerDriver\Robert256_Do3Think_Camera_ASCOM_Trigger_Driver.csproj /t:Build /p:Configuration=Release
```

两个项目都使用 x86 目标平台。主驱动的 Inno Setup 脚本位于 [`installer/RobertDo3Think_ASCOM_Camera_Driver.iss`](installer/RobertDo3Think_ASCOM_Camera_Driver.iss)，构建主驱动后可使用 Inno Setup 的 `ISCC.exe` 生成安装包。

## 项目结构

```text
CameraDriver/          主驱动的 ASCOM Camera 实现
SoftwareTriggerDriver/ 独立软件触发版
installer/             Inno Setup 安装脚本
work/                  可复用的校正验证代码
dist/                  本地发布包和 Release 附件
```

## 版本与许可证

当前公开安装包包括两个版本：

- [v1.1.1 保守兼容版](https://github.com/Rober256/Do3Think-USB3_12M-Camera-Driver-for-ASCOM/releases/tag/v1.1.1)：保留较早的采集恢复路径，适合作为已经验证过的系统的稳定回退版本。
- [v1.1.2 采集/恢复调整版](https://github.com/Rober256/Do3Think-USB3_12M-Camera-Driver-for-ASCOM/releases/tag/v1.1.2)：调整了采集线程、帧错误处理、曝光/增益参数应用和相机重连流程。

两个版本的安装包依赖文件相同，差异主要在主驱动程序。由于目前没有覆盖所有相机和采集软件组合的自动化实机回归测试，不能把 `v1.1.1` 的“更稳定”理解为对所有环境的绝对保证；如果当前系统使用 `v1.1.1` 正常，建议保留它作为回退包，再单独验证 `v1.1.2`。

项目依赖 ASCOM Platform 和 Do3Think DVP SDK；使用和再分发时请同时遵守相应组件的许可证及厂商条款。
