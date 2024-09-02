# Import-Module oh-my-posh
# Set-PoshPrompt -Theme paradox
# Set-PoshPrompt -Theme blueish
# Set-PoshPrompt -Theme microverse-power
# Set-PoshPrompt -Theme huvix
# Set-PoshPrompt -Theme lambda
# Enable-PoshTooltips
# Enable-PoshTransientPrompt

# Import-Module posh-git
# Import-Module oh-my-posh
# Set-PoshPrompt -Theme Paradox
# oh-my-posh --init --shell pwsh --config C:\Users\petr\OneDrive\dev\omp\config.json | Invoke-Expression

oh-my-posh init pwsh --config $env:POSH_THEMES_PATH\lambda.omp.json | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
if(Test-Path 'C:\Users\petr\.inshellisense\key-bindings-pwsh.ps1' -PathType Leaf){. C:\Users\petr\.inshellisense\key-bindings-pwsh.ps1}

$env:Path += ";C:\dev\powershell-scripts\scripts"