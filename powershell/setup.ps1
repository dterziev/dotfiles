$ProgressPreference = "Ignore"

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

"# Powershell Profile" | Out-File $PROFILE -NoClobber -ErrorAction Ignore

if(-not (Get-Content $PROFILE | Select-String "oh-my-posh init")) {
    "oh-my-posh init pwsh --config '$env:LOCALAPPDATA\Programs\oh-my-posh\themes\craver.omp.json' | Invoke-Expression" | Out-File $PROFILE -Append
}
