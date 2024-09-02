$scriptPath = Join-Path -Path $PSScriptRoot -ChildPath "scripts"

# Set-Content -Path $profilePath -Value ''
# Add-Content -Path $profilePath -Value ('$env:Path += ";' + $scriptPath + '"')

if (Test-Path -Path $PROFILE) {
	Copy-Item -Path $PROFILE -Destination "$($PROFILE)-bac" -Force
	Remove-Item -Path $PROFILE -Force
}


# if (!(Test-Path -Path $PROFILE)) {
#     New-Item -ItemType File -Path $PROFILE -Force
# }