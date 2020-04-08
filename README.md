# Nerd Fonts Downloader
## Description
This simple script is to install all of the fonts from the Power Line Fonts Repo (https://github.com/powerline/fonts) in PowerShell to your Windows 10 workstation.
## Instructions
### Pre-requisite (borrowed from Chocolatey instructions)
With PowerShell, you must ensure `Get-ExecutionPolicy` is not `Restricted` We suggest using `Bypass` to bypass the policy to get things installed or `AllSigned` for quite a bit more security.
Run `Get-ExecutionPolicy`. If it returns `Restricted`, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process.`

To run the installer just open up a PowerShell command line, copy and paste this in there and hit enter:

```Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/kgodoy/nerd-fonts-downloader/master/nerd-fonts-downloader.ps1'))```
