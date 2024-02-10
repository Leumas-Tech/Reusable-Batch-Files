@echo off
set URL=http://localhost:3000/api/authProtectedEndpoint
set TOKEN=YourAuthTokenHere
set SAVEPATH=C:\Path\To\Folder\authCrudResponse.txt

curl -X GET -H "Authorization: Bearer %TOKEN%" "%URL%" > "%SAVEPATH%"

echo Protected resource accessed, response saved to %SAVEPATH%
pause
