# QuickStart
在 Windows 中使用一条命令快速打开任意程序.

仅需按下 Win+R, 直接输入:
```batchfile
open chrome
open qq
open vscode
...
```

## 开始使用
### 注册命令
第一次使用, 请将 `open.bat` 放置在任意目录(例如`D:\QuickStart\`), 然后在你的环境变量中找到 `Path` 变量, 并将此 bat 文件所在的目录添加进去.
![注册](https://s1.ax1x.com/2020/08/13/dSkxMT.png)

如果注册成功, 按 Win+R 并输入 `open` 后, 应该有如下提示:
![提示](https://s1.ax1x.com/2020/08/13/dSA0Fs.png)

### 添加文件
注册命令之后, 请在 `open.bat` 同级目录下创建名为 `files` 的文件夹, 并将自己程序的文件存放在此文件夹中 (这些文件可以是程序的快捷方式, 也可以是程序本体).

你可以将这些文件重命名成任意名称, 并且, 如果你希望某个文件有多个别称, 你可以在文件名中使用空格分隔它们.

例如, `files` 目录下有这些文件:
```
qq.lnk
vsc vscode.lnk
```
要打开第一个文件, 你可以使用 `open qq`.

要打开第二个文件, 你可以使用 `open vsc`, 也可以使用 `open vscode`.