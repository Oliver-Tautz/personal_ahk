## Chocolatey

# Set directory for installation - Chocolatey does not lock
# down the directory if not the default
$InstallDir = 'C:\ProgramData\chocoportable'
$env:ChocolateyInstall = "$InstallDir"

# If your PowerShell Execution policy is restrictive, you may
# not be able to get around that. Try setting your session to Bypass.
Set-ExecutionPolicy Bypass -Scope Process -Force;

# All install options - offline, proxy, etc at
# https://chocolatey.org/install
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))


## Choco packages

# Run choco install git in a new PowerShell session
Start-Process powershell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "choco install git -y"'


## Scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

## Scoop packages

Start-Process powershell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "scoop install vscode"'