git pull origin
echo ----GIT done----
echo file lock checks:
@echo off
setlocal

:: Specify the prefix to search for
set "prefix=creator_"
set allowed="yes"
:: Search for files starting with the specified prefix
for /r %%a in ("%prefix%*") do (
    set allowed="no"
    echo  YOU CANT EDIT THE SCENARIO - File found: %%~nxa (Path: %%~dpa)
)
echo "CAN YOU EDIT THE FILE? - %allowed%"
pause
:: End the script
exit /b
