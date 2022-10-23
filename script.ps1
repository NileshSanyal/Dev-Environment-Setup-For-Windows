<#
	Instructions: 
	
	1. You need to run Powershell in Administrator mode.
	2. Run this command "powershell Set-ExecutionPolicy RemoteSigned" Before executing this script
#>

<#
	Checking if powershell is installed or not
#>
$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
	Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	Write-Host -NoNewLine 'Press any key to continue...';
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
	Write-Host -NoNewLine 'Press any key to continue...';
	$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
}

<#
	Asking for installing list of softwares
#>
Write-Host "This script will install the softwares mentioned below`n"
Write-Host "Google Chrome `n Winrar `n Visual Studio Code `n Mongodb `n Mongodb Compass `n Python 3 `n Python 2 `n Git `n NVM `n DBeaver `n Wamp Server"

$key= Read-Host -Prompt "Press Y/y to Accept or N/n to Decline `n"

if($key -eq 'Y' -or $key -eq 'y') {

	.\sw-install.ps1

	$extensions_list = Get-Content .\vscode-extensions.txt
	For ($i = 0; $i -lt $extensions_list.Length; $i++) {
		code --install-extension $extensions_list[$i]
	}
	Write-Host "All Softwares Installed successfully!!"
} else {
	Write-Host "You aborted the installation!!"
}

