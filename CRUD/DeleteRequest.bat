@echo off
set URL=http://localhost:3000/api/deleteEndpoint/1
set SAVEPATH=C:\Path\To\Folder\deleteResponse.txt

curl -X DELETE "%URL%" > "%SAVEPATH%"

echo Resource deleted, response saved to %SAVEPATH%
pause
