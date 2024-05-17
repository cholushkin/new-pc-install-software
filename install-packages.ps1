#Requires -RunAsAdministrator

Set-ExecutionPolicy Bypass -Scope Process -Force

# Check if Chocolatey is installed and print the version or install if not
if (Test-Path -Path "$env:ProgramData\Chocolatey\bin\choco.exe") {
    $chocoVersion = choco --version
    Write-Host "Chocolatey version $chocoVersion is installed."
} else {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
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
