@echo off
echo Listing all serial ports...
mode

echo.
echo Attempting to list device names for serial ports...
powershell -Command "Get-PnpDevice | Where-Object { $_.Class -eq 'Ports' } | Format-Table Name, Status -AutoSize"

pause
