# RobertDo3Think USB3 12M ASCOM 软件触发版

这是与原驱动并存的独立实验版本，不使用堆栈，也不覆盖原驱动目录或注册项。

- ASCOM ProgID：`ASCOM.RobertDo3Think_USB3_12M_Camera_Trigger.Camera`
- Chooser 名称：`RobertDo3Think USB3 12M Camera (Software Trigger)`
- 采集方式：软件触发，每次 `StartExposure` 只请求一帧
- 帧队列：连接和每次触发前清空残留帧
- 超时：一次实际曝光时间加 USB/读出余量，不再等待两个曝光周期
- 恢复：先重启触发流，仍失败时关闭并重新打开相机；恢复后重新发出本次触发
- `CanAbortExposure` / `CanStopExposure`：保持 `false`

此版本用于验证软件触发能否消除流式采集在曝光参数切换后产生的旧帧、过渡帧和双倍曝光等待问题。硬件实机验证时不要同时连接原驱动与本版本。
