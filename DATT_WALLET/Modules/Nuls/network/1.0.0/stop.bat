@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="network"
jps | find "NetworkBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO network is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
