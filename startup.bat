: DeekSeek To Go  v0.7.0  by �˶���
: Please open this file using GB 2312 (ANSI) encoding.

@echo off
title Ollama To Go
: �˴����ӡ���ʼ��������β����ʹ�������ԡ�Microsoft Activation Script����https://www.nsaneforums.com/topic/316668--/���Ĳ��ִ��룬���������޸ġ�
: �޸����ݣ�������ϵͳ�ڲ����Ÿ�Ϊ��10240����Windows 10��һ���汾�������Ի������ݽ������޸ġ�
: ��ʼ
for /f "tokens=2 delims==" %%a in ('wmic path Win32_OperatingSystem get BuildNumber /value') do (
  set /a WinBuild=%%a
)
if %winbuild% LSS 10240 (
echo ��֧�ֵĲ���ϵͳ��
echo ����Ҫ��ʹ��Windows10����߰汾��Windows�������߶�Ӧ�ķ������汾��
pause
exit
)
: ��β
cls
echo �򿪾ͱ���Windows�Ҳ����ļ�config_server.bat���������ַ���˴��ڣ�
echo ------------------------
echo ���ȼ�����Ƿ��Թ���Ա��������˴˽ű����˽ű���Ӧ�Թ���Ա������У���
echo ��û�У�����UAC���ã��������������
echo ����[Windows+S]�����������棬������UAC�����򿪡������û��˻��������á���
echo �鿴���������е���ɫ�ֱ�����������׶ˣ��뽫������һ����������������½ǵġ�ȷ�ϡ���
echo ��������׶ˣ������������ԭ����ɵĴ����⣬����԰ٶȻ���ֱ�����ҡ�
echo ------------------------
echo v0.7.0  by �˶���
start config_server.bat
cls
timeout 1
start config_client.bat