# Remove Pre-Installed Garbage
Get-AppxPackage king.com.CandyCrushFriends | Remove-AppxPackage  
Get-AppxPackage king.com.FarmHeroesSaga | Remove-AppxPackage  
Get-AppxPackage 7EE7776C.LinkedInforWindows | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage
Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage 7EE7776C.LinkedInforWindows | Remove-AppxPackage
Get-AppxPackage 7EE7776C.LinkedInforWindows | Remove-AppxPackage



# Chocolatey and Apps  
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install googlechrome -y
choco install vscode -y
choco install git -y
choco install steam -y
choco install discord -y
choco install spotify -y
choco install keytweak -y
