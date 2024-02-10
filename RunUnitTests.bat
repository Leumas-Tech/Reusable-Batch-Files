@echo off
cd /D "C:\Path\To\Backend"
npm test
cd /D "C:\Path\To\Frontend"
npm test
echo Unit tests executed.
pause
