@echo off
cd /D "C:\Path\To\Your\SherlockProject"
set /p usernames="Enter usernames separated by space: "
echo.

:Loop
for /f "tokens=1* delims= " %%a in ("%usernames%") do (
    set "username=%%a"
    set "usernames=%%b"
    start cmd /k "cd /D C:\Path\To\Your\SherlockProject && python sherlock %username% && exit"
    if not "%%b"=="" goto Loop
)

pause
