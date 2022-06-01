# Setup Paths
$SourcePath = Get-ChildItem -Path .\hotkey.ahk | %{$_.FullName}
$ShortcutPath = "$Env:AppData\Microsoft\Windows\Start Menu\Programs\Startup\hotkey.ahk.lnk"

# Create the Shortcut
$WScriptObj = New-Object -ComObject ("WScript.Shell")
$shortcut = $WscriptObj.CreateShortcut($ShortcutPath)
$shortcut.TargetPath = $SourcePath
$shortcut.Save()

echo "AHK Script install succesful. The script will automatically run on startup."