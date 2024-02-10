@echo off
cd /D "C:\Path\To\Your\SherlockProject"
set /p username="Enter username: "
python sherlock %username%
pause
