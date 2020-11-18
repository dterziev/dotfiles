Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module -Name PSReadLine -Scope CurrentUser -Force # to live on the edge add: -AllowPrerelease -SkipPublisherCheck

"# Powershell Profile" | Out-File $PROFILE -NoClobber -ErrorAction Ignore

if(-not (Get-Content $PROFILE | Select-String "Import-Module posh-git")) {
    "Import-Module posh-git" | Out-File $PROFILE -Append
    "Import-Module oh-my-posh" | Out-File $PROFILE -Append
    "Set-Theme Paradox" | Out-File $PROFILE -Append
}
