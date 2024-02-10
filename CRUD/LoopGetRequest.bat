@echo off
set URL_BASE=http://localhost:3000/api/resource/
set IDs=1 2 3 4 5

for %%i in (%IDs%) do (
    set SAVEPATH=C:\Path\To\Folder\response%%i.txt
    curl "%URL_BASE%%%i" > "!SAVEPATH!"
    echo Response for ID %%i saved to !SAVEPATH!
)

pause
