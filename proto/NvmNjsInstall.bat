@echo off

where choco.exe
if %ERRORLEVEL% NEQ 0 (
  echo Please, install the utility Chocolatey and then run the script
  echo Run next command in administrative shell to install utility :
  exit /b
)

set VERSION=%1

choco install nvm -y

if "%VERSION%" == "" (
  set VERSION=14.15.4
)

nvm install 14.15.4

