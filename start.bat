@echo off
echo Did you check if you can edit the scenario with check.bat? if not, close this window and run check.bat first
pause

setlocal

:: Get the current username
set "username=%USERNAME%"

:: Remove any spaces from the username (if present)
set "username=%username: =%"

:: Create an empty file with the username as the filename
echo. > "creator_%username%"

:: Display a message indicating success
echo File "creator_%username%" created successfully!
git add creator_%username%
git commit -m "creator_%username%"
git push origin master
:: End the script
exit /b
