@echo off
set /p DATA="Enter user data in JSON format: "
set URL=http://localhost:3000/api/interactiveCreate
set SAVEPATH=C:\Path\To\Folder\interactivePostResponse.txt

curl -X POST -H "Content-Type: application/json" -d "%DATA%" "%URL%" > "%SAVEPATH%"

echo Response saved to %SAVEPATH%
pause
