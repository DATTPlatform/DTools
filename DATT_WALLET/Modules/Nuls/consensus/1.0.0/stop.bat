@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="consensus"
jps | find "ConsensusBootStrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO consensus is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
