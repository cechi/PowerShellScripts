$documentPath = [Environment]::GetFolderPath("MyDocuments")
$profilePath = Join-Path -Path $documentPath -ChildPath "/WindowsPowerShell/profile.ps1"
$scriptPath = Join-Path -Path $PSScriptRoot -ChildPath "scripts"

Set-Content -Path $profilePath -Value ''
Add-Content -Path $profilePath -Value ('$env:Path += ";' + $scriptPath + '"')
