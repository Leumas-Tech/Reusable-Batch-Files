@echo off
set URL=http://localhost:3000/api/updateEndpoint/1
set DATA={"name":"Jane Doe","email":"jane@example.com"}
set SAVEPATH=C:\Path\To\Folder\putResponse.txt

curl -X PUT -H "Content-Type: application/json" -d "%DATA%" "%URL%" > "%SAVEPATH%"

echo Response saved to %SAVEPATH%
pause
