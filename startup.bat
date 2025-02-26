: DeekSeek To Go  v1.2.1  by 运动鸡
: Please open this file using GB 2312 (ANSI) encoding.

@echo off
title Ollama To Go
: 此处（从“开始”至“结尾”）使用了来自“Microsoft Activation Script”（https://www.nsaneforums.com/topic/316668--/）的部分代码，并进行了修改。
: 修改内容：将操作系统内部代号改为”10240“（Windows 10第一个版本），并对回显内容进行了修改。
: 开始
for /f "tokens=2 delims==" %%a in ('wmic path Win32_OperatingSystem get BuildNumber /value') do (
  set /a WinBuild=%%a
)
if %winbuild% LSS 10240 (
echo 不支持的操作系统！
echo 程序要求使用Windows10或更高版本的Windows！（或者对应的服务器版本）
pause
exit
)
: 结尾
cls
echo 打开就报错“Windows找不到文件config_server.bat”，不出现服务端窗口？
echo ------------------------
echo 首先检查你是否以管理员身份运行了此脚本（此脚本不应以管理员身份运行），
echo 若没有，请检查UAC配置，具体操作方法：
echo 按下[Windows+S]调出搜索界面，搜索“UAC”，打开“更改用户账户控制设置”，
echo 查看弹出窗口中的蓝色手柄，若它在最底端，请将其拉高一档，并点击窗口右下角的“确认”。
echo 若不在最底端，则可能是其他原因造成的此问题，你可以百度或者打开此文件夹内的“q.jpg”
echo 扫码进入交流群后咨询。
echo ------------------------
echo v1.2.0  by 运动鸡
start config_server.bat
cls
timeout 1
start config_client.bat