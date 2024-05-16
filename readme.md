# InstallPackages.ps1 - Help

## Description
InstallPackages.ps1 is a PowerShell script designed to simplify the installation or update of software packages using Chocolatey package manager. It automates the process of checking for installed packages, updating them if necessary, and installing new packages.

## Usage
1. Ensure that you have administrative privileges before running this script.

2. Prepare a file named `packages.txt` in the same directory as the script. Each line in this file should contain the name of a package you want to install or update using Chocolatey. Make sure to use the exact package names as they appear on the Chocolatey website.

3. Run the script `InstallPackages.ps1` in PowerShell.

The script will begin by checking if Chocolatey is installed. If not, it will automatically download and install Chocolatey for you. Next, it will read the list of packages from the "packages" file and check if each package is already installed. If a package is installed, it will be updated to the latest version. If a package is not installed, it will be installed. After the script completes, you will see the status of each package installation/update in the PowerShell output.

## Important
- Review the content of the "packages" file before running the script to ensure it contains the correct package names.

- Ensure that you trust the sources from which you are installing software packages.

- If you encounter any issues during the installation/update process, review the error messages displayed in the PowerShell output for troubleshooting.


## List of additional software 

Here is the list of software that I usually additionally install to the new Windows PC:

- HWMonitor
- Total Commander with plugins
- notepad++ plugins: 
  - csv lint
  - json tools
  - luascript
  - markdown panel
  - mime tools
  - npp coverter
  - npp export
- rider
- unity
- unreal engine
- python:
  - conda ( https://docs.conda.io/projects/conda/en/stable/ )