@echo off
setlocal enabledelayedexpansion

:: Define list of URLs
set "URLS=https://bluehost.com https://chat.openai.com https://youtube.com https://netflix.com https://spotify.com https://google.com"

:: Split URLs and open each
for %%A in (%URLS%) do (
    start "" "%%A"
)

echo URLs opened in default browser.
pause
