@echo off
cd /D "C:\Path\To\Your\Frontend"
echo Building the project...
npm run build
set /p buildname="Enter the desired name for the build folder: "
echo Renaming and moving the build folder to the desktop...
move "build" "%USERPROFILE%\Desktop\%buildname%"
echo Build folder moved successfully.
pause
