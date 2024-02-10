@echo off
set URL=http://localhost:3000/api/readEndpoint
set SAVEPATH=C:\Path\To\Folder\getResponse.txt

curl "%URL%" > "%SAVEPATH%"

echo Response saved to %SAVEPATH%
pause
