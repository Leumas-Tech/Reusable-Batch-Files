@echo off
set URL=http://localhost:3000/api/createEndpoint
set DATA={"name":"John Doe","email":"john@example.com"}
set SAVEPATH=C:\Path\To\Folder\postResponse.txt

curl -X POST -H "Content-Type: application/json" -d "%DATA%" "%URL%" > "%SAVEPATH%"

echo Response saved to %SAVEPATH%
pause
