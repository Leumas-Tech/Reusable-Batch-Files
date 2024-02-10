@echo off
echo Starting MongoDB server...
cd /D "C:\path\to\mongodb\bin"
mongod --dbpath "C:\path\to\data\db"
pause
