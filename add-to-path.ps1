param (
    [string]$NewPathEntry
)

if (-not $NewPathEntry) {
    Write-Host "Please provide a path to add to the system PATH."
    exit
}


function SplitPath {
    param (
        [string]$PathString
    )
    
    # Create an array to store the path entries
    $PathEntries = @()

    # Split the PATH string into individual entries
    $PathEntries = $PathString -split ';'
    
    # Return the array of path entries
    return $PathEntries
}


# Get the current system PATH
$Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')

# Check if the new path entry is already in the PATH variable
if ($Path -notlike "*$NewPathEntry*") {
    # Check if the specified directory exists
    if (Test-Path -Path $NewPathEntry) {
        # If the directory exists and the path is not already in the PATH, append it
        $NewPath = $Path + ";" + $NewPathEntry
        # Update the system PATH environment variable
        [System.Environment]::SetEnvironmentVariable('Path', $NewPath, 'Machine')
        Write-Host "Path added to the system PATH."
    } else {
        # If the directory is not found, output a warning
        Write-Host "The specified path does not exist. Please check the path and try again."
    }
} else {
    # If the path is already in the PATH, do nothing
    Write-Host "The specified path is already in the system PATH."
}

# Print the current/new system PATH
Write-Host "Current system PATH:"

# Reload the PATH variable from the environment to reflect the change in the current session
#$env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')

$CurrentPath = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
$PathArray = SplitPath -PathString $CurrentPath
foreach ($Path in $PathArray) {
    Write-Host $Path
}
