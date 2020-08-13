# QuickStart

[中文文档](./README_CN.md)

Open any applications by a command on Windows.

You only need to press `Win+R`, then enter:

```batchfile
open chrome
open qq
open vscode
...
```

## To start
### Register command
For the first time, please put the `open.bat` in any directory (such as `D:\Quickstart`).Then find out the `Path` variable in the environment variable and add the bat file's directory into it.
![Register](https://s1.ax1x.com/2020/08/13/dSkxMT.png)

If you registered successful, it should show the following tips after you pressed `Win-R` and entered `open`:
![Tips](https://s1.ax1x.com/2020/08/13/dSA0Fs.png)

### Add files
After you register the command, you should create a directory named `files` in the `open.bat` file's directory.At the same time, you need to put your own application files into the directory (These can be the shortcut or the application itself).

You can rename the files for any name.At the same time, if you want any file to own more than one name, you can separate them by space.

For example, `files` directory includes these files:
```
qq.lnk
vsc vscode.lnk
```
You can use `open qq` to open the first file.

If you want to open the second file, you can use `open vsc` or `open vscode` to do.
