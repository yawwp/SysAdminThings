write-host "Chrome Install Initiated.... "
$installer_name = 'chrome'
Invoke-WebRequest -uri 'http://dl.google.com/chrome/install/375.126/chrome_installer.exe' -OutFile "C:\windows\temp\$($installer_name).exe"
write-host "Starting Chrome Install"
Start-Process "C:\windows\temp\$($installer_name).exe" -ArgumentList "/silent /install" -Wait
write-host "Done Installing.... Removing Chrome Exe Now"
Remove-Item "C:\windows\temp\$($installer_name).exe" -Force
write-host "Finished"