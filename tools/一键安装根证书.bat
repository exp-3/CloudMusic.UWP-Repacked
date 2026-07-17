@echo off

cd "%~dp0"
IF NOT EXIST "ca.cer" (
	echo .
	echo 错误，需要安装的证书文件缺失。
	echo 请先完整解压缩所有文件后再使用本工具。
	echo .
	echo 请按空格或其他任意键推出...
	pause >nul
	exit /b
)

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
	echo.
	echo 需要管理员权限才能安装根证书
	echo.
	echo 请按空格或其他任意键以获取管理员权限...
	pause >nul
	goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
	echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
	"%temp%\getadmin.vbs"
	exit /B

:gotAdmin
	if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
	pushd "%CD%"
	CD /D "%~dp0"
:--------------------------------------

echo.
certutil -addstore -f "ROOT" "ca.cer"
echo.
echo 请按空格或其他任意键推出...
pause >nul
