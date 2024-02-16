@echo off
SETLOCAL ENABLEEXTENSIONS

:: Replace the placeholder below with the path to your Node.js server's directory
set PROJECT_DIR=Path\To\Your\NodeJS\Project

:: Change directory to your project folder
cd /d %PROJECT_DIR%

:: Add changes to git
git add .

:: Commit changes with a custom message
git commit -am "make it better"

:: Push changes to Heroku
git push heroku master

ENDLOCAL
