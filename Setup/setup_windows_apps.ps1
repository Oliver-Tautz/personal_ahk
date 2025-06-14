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

refreshenv

## Choco packages


choco install git -y
choco install autohotkey -y --version=2.0.14



## Scoop

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression # Check if Scoop is already installed
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}
else {
    Write-Host "Scoop is already installed. Continuing..."
}

scoop bucket add extras

refreshenv


## Scoop packages

scoop install extras/vscode 
scoop isntall 7zip


# App Store Packages
winget install --id=9NCBCSZSJRSB --source=msstore --accept-package-agreements --accept-source-agreements --silent  # Spotify
winget install --id=9NKSQGP7F2NH --source=msstore --accept-package-agreements --accept-source-agreements --silent  # WhatsApp
