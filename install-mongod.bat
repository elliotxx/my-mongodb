@echo off
set bin_path=%cd%\bin

echo 添加 path 环境变量……
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "%path%;%bin_path%" /f

echo 创建 mongodb 配置文件……
echo port = 27017 > "%cd%\conf\mongod.conf"
echo dbpath = %cd%\data >> "%cd%\conf\mongod.conf"
echo logpath = %cd%\dblogs\mongod.log >> "%cd%\conf\mongod.conf"

echo 创建 start-mongod.bat 启动脚本……
echo "%bin_path%\mongod.exe" -f "%cd%\conf\mongod.conf" > "%cd%\bin\start-mongod.bat"

echo mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed 安装完成！
pause

