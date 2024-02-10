@echo off
setlocal enabledelayedexpansion

:: Prompt user for the number of programs to start
set /p count="Enter the number of programs you want to start: "

:: Loop to get each program's path
for /L %%i in (1,1,%count%) do (
    set /p programPath"Enter the full path of program %%i: "
    start "" "!programPath!"
)

echo All specified programs have been started.
pause
