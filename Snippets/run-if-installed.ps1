$software = "Kapow"
$installed = (Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | Where { $_.DisplayName -eq $software }) -ne $null

If(-Not $installed) {
		Write-Host "'$software' NOT is installed.";
} else {
		Write-Host "'$software' is installed."
		#Write-Host "Create Hardlink to database"
		#New-Item -ItemType HardLing -Path  -Target .\Config\profile.ps1
}
