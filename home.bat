: Deepseek To Go  v1.1.0  by 运动鸡
: Please open this file using GB 2312 (ANSI) encoding.

@echo off
title DeepSeek To Go 客户端
if not exist ollama.exe (
    echo 没有在此文件夹内找到Ollama！请按[W]键下载zip包（“ollama-windows-amd64.zip”），并手动解压至此文件夹,再重启整个程序！
    choice /C:W /N
    start start https://github.com/ollama/ollama/releases/
    exit
)

:main
@echo off
set errorlevel=0
cls
title DeepSeek To Go 客户端
color %color_client%
echo DeepSeek To Go
set next_interface=main_n
goto :text_block_models_list
:main_n
echo ------------------------
echo [T] 使用提示（使用前必读）
echo [F] 常见问题
echo [H] 查看历史记录
echo [D] 清除历史记录
echo [S] 再启动一个客户端
echo [U] 卸载已安装的模型
echo [C] 进入命令行
echo [A] 高级命令
echo [I] 关于
echo ------------------------
echo 按下[ ]里对应的键盘按键以启动[ ]后的功能。
choice /C:TFHDSUCAIJ12345678 /N
if errorlevel 18 goto :run_ds_v3_671b
if errorlevel 17 goto :run_ds_r1_671b
if errorlevel 16 goto :run_ds_r1_70b
if errorlevel 15 goto :run_ds_r1_32b
if errorlevel 14 goto :run_ds_r1_14b
if errorlevel 13 goto :run_ds_r1_8b
if errorlevel 12 goto :run_ds_r1_7b
if errorlevel 11 goto :run_ds_r1_1_5b
if errorlevel 10 goto :easter_egg
if errorlevel 9 goto :about
if errorlevel 8 goto :advanced_commands
if errorlevel 7 goto :terminal
if errorlevel 6 goto :uninstall_models
if errorlevel 5 goto :sta
if errorlevel 4 goto :confirm_clear_history
if errorlevel 3 goto :history
if errorlevel 2 goto :faq
if errorlevel 1 goto :tips

:run_ds_r1_1_5b
set model_name_1=r1
set model_name_2=1.5b
goto :text_block_run_models

:run_ds_r1_7b
set model_name_1=r1
set model_name_2=7b
goto :text_block_run_models

:run_ds_r1_8b
set model_name_1=r1
set model_name_2=8b
goto :text_block_run_models

:run_ds_r1_14b
set model_name_1=r1
set model_name_2=14b
goto :text_block_run_models

:run_ds_r1_32b
set model_name_1=r1
set model_name_2=32b
goto :text_block_run_models

:run_ds_r1_70b
set model_name_1=r1
set model_name_2=70b
goto :text_block_run_models

:run_ds_r1_671b
set model_name_1=r1
set model_name_2=671b
goto :text_block_run_models

:run_ds_v3_671b
set model_name_1=v3
set model_name_2=671b
goto :text_block_run_models

:tips
cls
echo 提示：
echo 1.“deepseek-r1:Xb”中的“Xb”表示参数量。
echo 参数越少，生成速度越快,系统资源消耗越少；
echo 参数越多，生成的内容质量越好。
echo 2.每个模型后面( )里的数字表示该模型所需的RAM/显存,
echo 运行模型前,请确保电脑有足够的RAM/显存来运行此模型！
echo 3.模型加载需要一些时间，期间请耐心等待。
echo 4.AI输出内容时，可以按[Ctrl+C]使其闭嘴。
echo 5.在聊天窗口中输入“/bye”即可返回主页。
echo 6.将聊天窗口和服务端窗口都关闭即可关闭模型并退出整个程序。
echo 7.可以在命令行中输入“home”并按回车返回主页。
echo 8.可以用“再启动一个客户端”实现多人同时使用
echo （由于历史记录是按时间顺序排列的，这可能引起错乱，不介意的不用管，
echo 低配电脑、学校一体机就少开几个算了，别整的爆内存）
echo 9.历史记录、DeepSeek To Go的公钥和私钥放在本地计算机的用户文件夹内，
echo 不会随着DeepSeek To Go移动。
echo ------------------------
echo 注意：
echo 1.除非要关闭整个程序，请勿关闭服务端，
echo 否则会停止当前模型运行并无法启动新的模型！
echo 2.请勿在服务端开启的情况下打开“startup.bat”，
echo 否则会导致服务端端口占用继而造成错误！
echo （如果你需要多开，请使用“再启动一个客户端”）
echo 3.请勿以管理员身份运行此脚本，否则无法启动服务端！
echo 4.请勿随意修改此文件夹（DeepSeekToGo）中的文件，
echo 若随意修改，则可能造成未知错误！
echo ------------------------
pause
goto :main

:faq
cls
echo 常见问题
echo ------------------------
echo F：AI输出很慢，电脑要卡爆了怎么办？
echo A：请根据需求选择参数量小一些的模型，如果仍不能解决问题，请升级电脑配置。
echo ------------------------
echo F：AI生成内容不理想怎么办？
echo A：请根据电脑配置选择参数量大一些的模型。
echo ------------------------
echo F：在服务端或客户端里出现“拒绝访问”是怎么回事？
echo A：你可能把DeepSeek To Go放到了Windows的敏感文件夹里，
echo 我们建议你把DeepSeek To Go放到除C盘外的其他磁盘（可移动磁盘）根目录中。
echo ------------------------
pause
goto :main

:history
if not exist %userprofile%\.ollama\history (
    cls
    echo 还没有历史记录哦！
    pause
    goto :main
)
start notepad.exe "%userprofile%\.ollama\history"
goto :main

:confirm_clear_history
cls
echo 确认执行
echo ------------------------
echo 要 清除历史记录 吗？
echo 此操作无法撤销！
echo 警告：如果你的电脑上已经安装了Ollama，请谨慎执行！
echo ------------------------
echo [C] 执行操作，我知道我在做什么！
echo [B] 不执行操作，并返回上一级。
echo ------------------------
choice /C:BC /N
if errorlevel 2 (
    cls
    del %userprofile%\.ollama\history
    echo 命令执行完毕。
    pause
    goto :main
)
if errorlevel 1 goto :main

:advanced_commands
cls
echo 高级命令
echo ------------------------
echo 如果你不知道下列命令的含义，请勿执行操作，并按[B]返回主页！
echo ------------------------
echo [B] 返回主页
echo [C] 清除DeepSeek To Go的公钥和私钥
echo [D] 删除当前用户文件夹中的“.ollama”文件夹
echo [E] 编辑服务端配置文件
echo [F] 编辑客户端配置文件
echo ------------------------
choice /C:BCDEF /N
if errorlevel 5 (
    start notepad.exe "config_client.bat"
    goto :advanced_commands
)
if errorlevel 4 (
    start notepad.exe "config_server.bat"
    goto :advanced_commands
)
if errorlevel 3 goto :confirm_clear_folder_ollama
if errorlevel 2 goto :confirm_clear_key
if errorlevel 1 goto :main

:confirm_clear_key
cls
echo 确认执行
echo ------------------------
echo 要 清除DeepSeek To Go的公钥和私钥 吗？
echo 警告：这会删除当前用户文件夹里“.ollama”文件夹中的
echo “id_ed25519.pub”和“id_ed25519”文件！
echo 此操作无法撤销！
echo 如果你的电脑上已经安装了Ollama，请谨慎执行！
echo ------------------------
echo [C] 执行操作，我知道我在做什么！
echo [B] 不执行操作，并返回上一级。
echo ------------------------
choice /C:BC /N
if errorlevel 2 (
    cls
    del %userprofile%\.ollama\id_ed25519.pub
    del %userprofile%\.ollama\id_ed25519
    echo 命令执行完毕。
    pause
    goto :advanced_commands
)
if errorlevel 1 goto :advanced_commands

:confirm_clear_folder_ollama
cls
echo 确认执行
echo ------------------------
echo 要 删除当前用户文件夹中的“.ollama”文件夹 吗？
echo 警告：这会删除当前用户文件夹里的“.ollama”文件夹！
echo 此操作无法撤销！
echo 如果你的电脑上已经安装了Ollama，请谨慎执行！
echo ------------------------
echo [C] 执行操作，我知道我在做什么！
echo [B] 不执行操作，并返回上一级。
echo ------------------------
choice /C:BC /N
if errorlevel 2 (
    cls
    rmdir /s /q %userprofile%\.ollama
    echo 命令执行完毕。
    pause
    goto :advanced_commands
)
if errorlevel 1 goto :advanced_commands

:uninstall_models
color %color_client%
cls
echo 卸载已安装的模型
set next_interface=uninstall_models_n
goto :text_block_models_list
:uninstall_models_n
echo [A] 全部模型
echo [B] 返回主页
echo ------------------------
choice /C:12345678AB /N
if errorlevel 10 goto :main
if errorlevel 9 goto :uninstall_all
if errorlevel 8 goto :uninstall_ds_v3_671b
if errorlevel 7 goto :uninstall_ds_r1_671b
if errorlevel 6 goto :uninstall_ds_r1_70b
if errorlevel 5 goto :uninstall_ds_r1_32b
if errorlevel 4 goto :uninstall_ds_r1_14b
if errorlevel 3 goto :uninstall_ds_r1_8b
if errorlevel 2 goto :uninstall_ds_r1_7b
if errorlevel 1 goto :uninstall_ds_r1_1_5b

:uninstall_ds_v3_671b
set model_name_1=v3
set model_name_2=671b
goto :text_block_uninstall_models

:uninstall_ds_r1_671b
set model_name_1=r1
set model_name_2=671b
goto :text_block_uninstall_models

:uninstall_ds_r1_70b
set model_name_1=r1
set model_name_2=70b
goto :text_block_uninstall_models

:uninstall_ds_r1_32b
set model_name_1=r1
set model_name_2=32b
goto :text_block_uninstall_models

:uninstall_ds_r1_14b
set model_name_1=r1
set model_name_2=14b
goto :text_block_uninstall_models

:uninstall_ds_r1_8b
set model_name_1=r1
set model_name_2=8b
goto :text_block_uninstall_models

:uninstall_ds_r1_7b
set model_name_1=r1
set model_name_2=7b
goto :text_block_uninstall_models

:uninstall_ds_r1_1_5b
set model_name_1=r1
set model_name_2=1.5b
goto :text_block_uninstall_models

:uninstall_all
cls
echo 确认执行
echo ------------------------
echo 要 卸载全部模型 吗？
echo 此操作无法撤销！
echo ------------------------
echo [C] 执行操作，我知道我在做什么！
echo [B] 不执行操作，并返回上一级。
echo ------------------------
choice /C:CB /N
if errorlevel 2 goto :uninstall_models
cls
if not exist "%cd%\models\manifests\registry.ollama.ai\library\deepseek-r1" (
    echo 尚未有模型安装！
    pause
    goto :uninstall_models
)
del /s /q "%cd%\models\manifests\registry.ollama.ai\library\deepseek-r1"
del /s /q "%cd%\models\blobs"
echo 命令执行完毕。
pause
goto :uninstall_models

:sta
start config_client.bat
goto :main

:easter_egg
set errorlevel=0
cls
echo 鸡
echo ------------------------
echo [B] 返回主页
choice /C:NB /N
if errorlevel 2 goto :main
cls
echo 鸡你
echo ------------------------
echo [B] 返回主页
choice /C:TB /N
if errorlevel 2 goto :main
cls
echo 鸡你太
echo ------------------------
echo [B] 返回主页
choice /C:MB /N
if errorlevel 2 goto :main
:jntm
cls
echo [J] 鸡你太美
echo ------------------------
echo 小黑子 漏出鸡脚了吧！
echo ------------------------
echo [B] 返回主页
choice /C:JB /N
if errorlevel 2 goto :main
if errorlevel 1 (
    start https://www.bilibili.com/video/BV1J4411v7g6
    goto :jntm
)

:about
cls
echo 关于
echo ------------------------
echo DeepSeek To Go  v1.1.0
echo 项目作者：运动鸡
echo 贡献者：Xia Junyi（运行测试，bug反馈）
echo [Q] q群：1033982052
echo [A] B站：运动鸡（https://space.bilibili.com/1230630211）
echo [P] 项目地址：https://github.com/Yundongji/DeepSeek-To-Go
echo [D] 捐赠：https://afdian.com/a/yundongji
echo [O] 此程序使用的开源项目
echo [R] README
echo [L] LICENSE （此项目遵循MIT协议）
echo [B] 返回主页
echo ------------------------
choice /C:BLRODPAQ /N
if errorlevel 8 (
    start q.jpg
    goto :about
)
if errorlevel 7 (
    start https://space.bilibili.com/1230630211
    goto :about
)
if errorlevel 6 (
    start https://github.com/Yundongji/DeepSeek-To-Go
    goto :about
)
if errorlevel 5 (
    start https://afdian.com/a/yundongji
    goto :about
)
if errorlevel 4 goto :open_source_projects
if errorlevel 3 (
    start README.md
    cls
    goto :about
)
if errorlevel 2 (
    start notepad.exe LICENSE
    goto :about
)
if errorlevel 1 goto :main

:open_source_projects
cls
echo 此程序使用的开源项目
echo ------------------------
echo DeepSeek-r1
echo 探索未至之境
echo [1] https://www.deepseek.com
echo [2] https://www.github.com/deepseek-ai/DeepSeek-R1
echo [3] LIENSE
echo ------------------------
echo DeepSeek-v3
echo 探索未至之境
echo [4] https://www.deepseek.com
echo [5] https://www.github.com/deepseek-ai/DeepSeek-V3
echo [6] LICENSE-CODE
echo [7] LICENSE-MODEL
echo ------------------------
echo Ollama
echo Get up and running with large language models.
echo [8] https://www.ollama.com
echo [9] https://www.github.com/ollama
echo [0] LICENSE
echo ------------------------
echo Microsoft Activation Script（MAS）
echo Fork, Open Source and clean from AV's detection.
echo 本项目（DeepSeek To Go）使用了它的部分代码。
echo [A] https://www.nsaneforums.com/topic/316668--/
echo ------------------------
echo [B] 返回
choice /C:1234567890AB /N
if errorlevel 12 goto :about
if errorlevel 11 (
    start https://www.nsaneforums.com/topic/316668--/
    goto :open_source_projects
)
if errorlevel 10 (
    start notepad.exe %cd%\osp_license\Ollama_LICENSE
    goto :open_source_projects
)
if errorlevel 9 (
    start https://www.github.com/ollama
    goto :open_source_projects
)
if errorlevel 8 (
    start https://www.ollama.com
    goto :open_source_projects
)
if errorlevel 7 (
    start notepad.exe %cd%\osp_license\DeepSeek_v3_LICENSE-MODEL
    goto :open_source_projects
)
if errorlevel 6 (
    start notepad.exe %cd%\osp_license\DeepSeek_v3_LICENSE-CODE
    goto :open_source_projects
)
if errorlevel 5 (
    start https://github.com/deepseek-ai/DeepSeek-V3
    goto :open_source_projects
)
if errorlevel 4 (
    start https://www.deepseek.com
    goto :open_source_projects
)
if errorlevel 3 (
    start notepad.exe %cd%\osp_license\DeepSeek_r1_LICENSE
    goto :open_source_projects
)
if errorlevel 2 (
    start https://github.com/deepseek-ai/DeepSeek-R1
    goto :open_source_projects
)
if errorlevel 1 (
    start https://www.deepseek.com
    goto :open_source_projects
)

:text_block_models_list
echo ------------------------
echo [1] deepseek-r1:1.5b (1.1GB)
echo [2] deepseek-r1:7b (4.7GB)
echo [3] deepseek-r1:8b (4.9GB)
echo [4] deepseek-r1:14b (9GB)
echo [5] deepseek-r1:32b (20GB)
echo [6] deepseek-r1:70b (43GB)
echo [7] deepseek-r1:671b (404GB)
echo [8] deepseek-v3:671b (404GB)
goto :%next_interface%

:text_block_run_models
cls
if not exist "%cd%\models\manifests\registry.ollama.ai\library\deepseek-%model_name_1%\%model_name_2%" (
    echo 模型deepseek-%model_name_1%:%model_name_2%尚未安装！
    echo ------------------------
    echo [O] 在线下载
    echo [B] 返回主页
    echo ------------------------
    choice /C:OB /N
    if errorlevel 2 goto :main
)
title deepseek-%model_name_1%:%model_name_2%
cls
ollama run %ollama_chat_parameter% deepseek-%model_name_1%:%model_name_2%
goto :main

:manual_import


:text_block_uninstall_models
cls
echo 确认执行
echo ------------------------
echo 要 卸载模型deepseek-%model_name_1%:%model_name_2% 吗？
echo 此操作无法撤销！
echo ------------------------
echo [C] 执行操作，我知道我在做什么！
echo [B] 不执行操作，并返回上一级。
echo ------------------------
choice /C:CB /N
if errorlevel 2 goto :uninstall_models
cls
if not exist "%cd%\models\manifests\registry.ollama.ai\library\deepseek-%model_name_1%\%model_name_2%" (
    echo 模型deepseek-%model_name_1%:%model_name_2%尚未安装！
    pause
    goto :uninstall_models
)
ollama rm deepseek-%model_name_1%:%model_name_2%
echo 命令执行完毕。
pause
goto :uninstall_models

:terminal
cls
@echo on
@exit /b