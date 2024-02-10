
@REM Publishing a frontend build directly from a batch file to a Bluehost cPanel hosting environment involves a few steps and considerations. Direct file transfer to cPanel can be achieved using FTP (File Transfer Protocol) or SFTP (SSH File Transfer Protocol), depending on what your hosting provider supports. Below is a general outline of how to create a batch file for building your frontend and then publishing it using FTP.

@REM Step 1: Prepare FTP Credentials
@REM First, ensure you have your FTP credentials handy:

@REM Hostname (e.g., ftp.yourdomain.com)
@REM Username
@REM Password
@REM The target directory path on your server where you want to publish the build
@REM Step 2: Install an FTP Client Command Line Tool
@REM Windows does have a built-in command-line FTP client, but it's quite limited in functionality and does not support SFTP or FTPS (FTP over SSL), which are more secure. Tools like WinSCP provide a command-line utility that supports more secure file transfer protocols. Ensure you have a command-line FTP or SFTP client installed on your machine that can be used in a batch file.

@REM Assuming you have WinSCP for this example, here's how you could automate the deployment:

@REM Step 3: Create the Batch File
@REM Open Notepad or your preferred text editor.
@REM Copy and paste the script below, modifying it with your specific details:

@REM ====================================================================================================

@echo off
cd /D "C:\Path\To\Frontend"
echo Building project...
npm run build

echo Deploying to Bluehost...
"C:\Path\To\WinSCP\WinSCP.com" ^
  /log="C:\Path\To\Log\WinSCP.log" /ini=nul ^
  /command ^
    "open ftp://username:password@hostname/" ^
    "cd /path/to/deployment/directory/on/server" ^
    "put -r ./build/*" ^
    "exit"

echo Frontend deployed.
pause

@REM ====================================================================================================

@REM Replace:

@REM C:\Path\To\Frontend with the path to your frontend project.
@REM C:\Path\To\WinSCP\WinSCP.com with the path to your WinSCP.com file.
@REM username, password, and hostname with your actual FTP credentials.
@REM /path/to/deployment/directory/on/server with the target directory on your Bluehost server.
@REM This script does the following:

@REM Navigates to your project directory and builds your frontend project.
@REM Uses WinSCP to open an FTP connection to your Bluehost server, navigates to the specified directory, uploads the contents of your build directory recursively, and then exits.
@REM Logs the FTP session activity to a file for troubleshooting purposes.
@REM Save the file with a .bat extension, e.g., deploy_to_bluehost.bat. Ensure you save it as "All Files" type to prevent it from saving as a text file.

@REM Run your batch file by double-clicking on it. It will build your project and then deploy it to your specified directory on Bluehost.

@REM Note:
@REM Ensure WinSCP (or your chosen FTP client) is installed and correctly pathed in the batch file.
@REM The put -r ./build/* command uploads all files from the build directory to your server. Adjust the source path according to where your build artifacts are located relative to the batch file's execution context.
@REM This example uses FTP, which is not secure. If your hosting supports it, use SFTP by changing the open command to something like open sftp://username:.... Check WinSCP's documentation for precise syntax and options.
@REM Remember, deploying sensitive credentials within batch files poses a security risk. Ensure this file is kept secure and consider using environment variables or another method to secure your credentials.