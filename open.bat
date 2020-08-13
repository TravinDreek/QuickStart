:Start
	@echo off
	title QuickStart

	REM %1 是 Batch 的命令行传递的参数.
	REM 如果 %1 为空则显示命令帮助, 否则开始执行命令.
	if "%1" == "" (
		set Message_Title=信息
		set Message_Content=用法REM open [代号]
		set Message_Content_NL=示例REM open qq
		goto ShowMessage
	) else (
		goto ExecuteCommand
	)

:ExecuteCommand
	REM 遍历当前 Batch 运行目录中 files 文件夹下的所有文件, 并将文件名(带扩展名)赋值到 %%i.
	REM 取当前运行目录使用了 %~dp0 变量.
	for %%i in (%~dp0files\*) do (
		REM 使用空格拆分一个文件的不同代号, 并将代号赋值到 %%j.
		REM 使用 %%~ni 可以获取 %%i 文件的不带扩展名的文件名 (详见 for 命令帮助)
		for %%j in (%%~ni) do (
			REM 如果代号与命令行传递的参数一致, 则将要运行的文件的绝对路径赋值给 %open%.
			REM 使用 %%~fi 可以获取 %%i 文件的绝对路径, 使用 /i 以忽略大小写. (详见 for 命令帮助)
			if /i %%j == %1 (
				set open="%%~fi"
			)
		)
	)

	REM 上面的循环结束后, 如果 %open% 被赋值(找到了指定文件), 则打开 %open% 指向的文件, 否则显示错误信息.
	if defined open (
		start "" %open%
	) else (
		set Message_Title=错误
		set Message_Content=未知的文件代号 "%1".
		goto ShowMessage
	)
	exit

:ShowMessage
	REM 调整窗口大小和颜色, 然后显示消息.
	color f0
	mode con lines=8 cols=50
	cls
	echo.
	echo.   (!) %Message_Title%
	echo.
	echo.       %Message_Content% 
	echo.       %Message_Content_NL%
	echo.
	echo._________________________________________________
	pause