@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="mykernel"
jps | find "MyKernelBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO mykernel is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
