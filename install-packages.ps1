#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force

# install chocolatey if not installed
if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
  Invoke-Expression((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# for each package in the list, check if installed and update if necessary
Get-Content ".\packages.txt" | ForEach-Object {
    $packageName = ($_ -split "\r\n")[0]
    if ((choco list --local-only $packageName) -match $packageName) {
        Write-Host "$packageName is already installed. Updating..."
        choco upgrade $packageName -y
    } else {
        Write-Host "Installing $packageName..."
        choco install $packageName -y
    }
}
