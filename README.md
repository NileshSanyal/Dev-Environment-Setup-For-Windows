# What This Script Does

It installs the necessary softwares for Windows OS for Web development. It also installs necessary plugins for Visual Studio Code Editor.

# List of Softwares Installed By This Script

> - Winrar
> - Google Chrome
> - Visual Studio Code 
> - Mongodb
> - Mongodb Compass
> - Python 3.x
> - Python 2.x
> - Git
> - NVM
> - DBeaver
> - Wamp Server

# How To Use It

1. Clone this repository.
2. Run the Powershell terminal in administrator mode.
3. Run this command **Set-ExecutionPolicy RemoteSigned**
4. Now execute the script file by this command **.\script.ps1**


# How It Works

1. The test.ps1 script checks whether *Chocolatey* is installed or not. If not installed, it will install it. 
2. After that it installs the necessary softwares.
3. Then it reads each line from **vscode-extensions.txt** file and installs
   each extensions for *Visual Studio Code* editor.


