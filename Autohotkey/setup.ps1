$Source      = Join-Path $DOTFILES 'Autohotkey'
$Destination = 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup'

# Remove all autohotkey from startup
Get-ChildItem -Path $Destination  '*.ahk' | ForEach { 
	Remove-Item -Path $_.FullName 
}

# Copy all autohotkey to startup
Get-ChildItem -Path $Source -Include '*.ahk' -Recurse | ForEach {

	# Copy ahk to startup folder
	 Copy-Item $($_.FullName) -Destination $Destination
 }
