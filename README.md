# QuickStart

[中文文档](./README_CN.md)

Open any applications by one command on Windows

Simply press Win+R and enter:
```batchfile
open chrome
open qq
open vscode
...
```

## Get Started
### Registering the Command
For the first time, please put the `open.bat` in any directory you want (e.g. `D:\Quickstart`). Then edit the `Path` variable in the environment variables by adding the directory where the bat file is located.

![Register](https://s1.ax1x.com/2020/08/13/dSkxMT.png)

If registration is successful, press Win+R and type "open", you should get the following message:

![Message](https://s1.ax1x.com/2020/08/13/dSA0Fs.png)

### Adding Files
After registering the command, create a folder named "files" in the directory where the bat file is located, then put your own files into this folder (these files can be either shortcuts to the application or the application itself).

You can rename these files to any name you like, and if you want a file to have more aliases, you can separate them with spaces in the filename.

For example, `files` directory includes these files:
```
qq.lnk
vsc vscode.lnk
```
To open the first file, you can use `open qq`.

To open the second one, you can use either `open vsc` or `open vscode`.
