@echo off
if "%OS%" == "Windows_NT" setlocal
set APP_NAME="ledger"
jps | find "LedgerBootstrap" > temp
for /f %%a in (temp) do (
   set pid=%%a
   goto killAPP
)
ECHO ledger is not running
goto end
:killAPP
taskkill /F /PID %pid%
goto end
:end
