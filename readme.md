# install-packages.ps1 - Help

## Description
`install-packages.ps1` is a PowerShell script designed to simplify the installation or update of software packages using Chocolatey package manager. It automates the process of checking for installed packages, updating them if necessary, and installing new packages.

## Usage
1. Ensure that you have administrative privileges before running this script.

2. Prepare a file named `packages.txt` in the same directory as the script. Each line in this file should contain the name of a package you want to install or update using Chocolatey. Make sure to use the exact package names as they appear on the Chocolatey website.

3. Run the script `install-packages.ps1` in PowerShell.

The script will begin by checking if Chocolatey is installed. If not, it will automatically download and install Chocolatey for you. Next, it will read the list of packages from the "packages" file and check if each package is already installed. If a package is installed, it will be updated to the latest version. If a package is not installed, it will be installed. After the script completes, you will see the status of each package installation/update in the PowerShell output.

## Important
- Review the content of the "packages" file before running the script to ensure it contains the correct package names.

- Ensure that you trust the sources from which you are installing software packages.

- If you encounter any issues during the installation/update process, review the error messages displayed in the PowerShell output for troubleshooting.


## List of additional software 

Below is a list of software that I commonly install on a new Windows PC, each of which lacks support from Chocolatey for various reasons:

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
- bitwig
- photoshop/illustrator
- alchemy
- Paint Tool SAI 2.0
- unreal engine
- python packages:
  - conda ( https://docs.conda.io/projects/conda/en/stable/ )