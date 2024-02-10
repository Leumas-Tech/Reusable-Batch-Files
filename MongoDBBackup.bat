@echo off
echo Creating database backup...
mongodump --db yourdbname --out C:\path\to\backup\%date:~-4,4%-%date:~-10,2%-%date:~-7,2%
echo Backup created.
pause
