
:: Get the current username
set "username=%USERNAME%"
@echo off
:: Remove any spaces from the username (if present)
set "username=%username: =%"

:: Create an empty file with the username as the filename
echo. > "creator_%username%"

git add scenario.scn
del creator_%username%
git add creator_%username%
git commit -m "finish creator_%username%"
git push origin master
echo ok
pause
:: End the script
exit /b
