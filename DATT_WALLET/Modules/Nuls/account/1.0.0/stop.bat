@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="account"
jps | find "AccountBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO account is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
