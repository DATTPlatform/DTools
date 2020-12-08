@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="block"
jps | find "BlockBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO block is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
