@echo off
set bin_path=%cd%\bin

echo ��� path ������������
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "%path%;%bin_path%" /f

echo ���� mongodb �����ļ�����
echo port = 27017 > "%cd%\conf\mongod.conf"
echo dbpath = %cd%\data >> "%cd%\conf\mongod.conf"
echo logpath = %cd%\dblogs\mongod.log >> "%cd%\conf\mongod.conf"

echo ���� start-mongod.bat �����ű�����
echo "%bin_path%\mongod.exe" -f "%cd%\conf\mongod.conf" > "%cd%\bin\start-mongod.bat"

echo mongodb-win32-x86_64-2008plus-ssl-3.4.5-signed ��װ��ɣ�
pause

