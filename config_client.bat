: DeekSeek To Go  v1.2.1  by 运动鸡
: Please open this file using GB 2312 (ANSI) encoding.
: 如果你不知道下列配置的含义，请勿编辑，请不保存并退出编辑器！
: 非配置项中的内容可能包含了程序运行的部分代码，请勿随意编辑，以免造成未知错误！
: 如果你要添加环境变量，请在指定处添加（行数不够可回车加行）。
: 配置编辑完直接保存退出并重启整个程序即可。

: （非配置项）关闭控制台回显。
@echo off

: 在此处添加你需要的环境变量。
: 开头



: 结尾

: 客户端窗口颜色，参数同cmd里的“color”命令。
set color_client=07

: 不保存历史记录。
set OLLAMA_NOHISTORY=0

: 启动聊天时为Ollama指定的参数，各个参数间用空格隔开。
set ollama_chat_parameter=--verbose

: （非配置项）此配置文件的版本，升级DeepSeek To Go时，若发现新版的配置文件比该文件版本高，你应该将旧的配置迁移到新版配置文件，并将旧版本替换。
set config_version_client=1.0

: （非配置项）启动主页命令。
home