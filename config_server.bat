: DeekSeek To Go  v0.7.0  by �˶���
: Please open this file using GB 2312 (ANSI) encoding.
: ����㲻֪���������õĺ��壬����༭���벻���沢�˳��༭����
: �����Ҫ��ӻ�������������ָ������ӣ����������ɻس����У���
: ���ñ༭��ֱ�ӱ����˳��������������򼴿ɡ�

: �رտ���̨���ԣ����ö���
@echo off

: ����˴��ڱ�������ʾ�����ݣ����ö���
title DeepSeek To Go �����

: ����ǰǰ����ļ������Ƿ���Ollama�����ö���
if not exist ollama.exe (
    echo û���ڴ��ļ������ҵ�Ollama���밴[W]������zip������ollama-windows-amd64.zip���������ֶ���ѹ�����ļ���,��������������
    choice /C:W /N
    start https://github.com/ollama/ollama/releases/
    exit
)

: �ڴ˴��������Ҫ�Ļ���������
: ��ͷ



: ��β

: ����˴�����ɫ��
color 07

: Ollama����������ӿڼ�����˿ڣ���IP��Ϊ��0.0.0.0�������������ӿڷ��ʡ�
set OLLAMA_HOST=127.0.0.1:11434

: ָ��ģ�͵Ĵ��Ŀ¼��
set OLLAMA_MODELS=%cd%\models\

: �Ƿ����á�����ע��������
set OLLAMA_FLASH_ATTENTION=1

: Ollama����ͬʱ������û��������������Ҫ�࿪�ܶ���ͻ��˿�����������
set OLLAMA_NUM_PARALLEL=4

: Ollama����ͬʱ���ص�ģ�����������Ҫ�࿪�ܶ���ͻ��˿�����������
set OLLAMA_MAX_LOADED_MODELS=4

: Ollama���������������ڴ����ò�����
ollama serve

: �Ƿ���Ollamaֹͣ����ʱ��ͣ����̨���Ա��ڷ����ֹͣ����ʱ�鿴����̨������ݣ�����һ���á�:�������ð�ţ�ע�͵�����ͣ����̨��
pause