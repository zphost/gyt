@ECHO OFF
cd %windir%\system32\drivers\etc
del hosts
C:\wget --no-check-certificate https://raw.githubusercontent.com/zhengpu1/hosts/master/1/hosts -O hosts2.txt
C:\wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O hosts1.txt
copy hosts2.txt + hosts1.txt hosts
ipconfig /flushdns
echo 请按任意键进行测试，如取消，请直接关闭本窗口
echo.
pause >nul
