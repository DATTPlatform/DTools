@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="transaction"
jps | find "TransactionBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO transaction is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
