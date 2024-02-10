@echo off

rem Define the serial port
set PORT=COM41

rem Define the baud rate
set BAUD=115200

rem Define the data bits
set DATABITS=8

rem Define the parity
set PARITY=N

rem Define the stop bits
set STOPBITS=1

rem Define the timeout in milliseconds
set TIMEOUT=1000

rem Open the serial port
mode %PORT%: BAUD=%BAUD% PARITY=%PARITY% DATABITS=%DATABITS% STOPBITS=%STOPBITS%

rem Read data from the serial port
type %PORT% > nul

rem Close the serial port
mode %PORT%: CLOSE

rem Display a message indicating that the operation was successful
echo Serial data read successfully from %PORT%.

pause