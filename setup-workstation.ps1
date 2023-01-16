# Set dotfile location as environment variable
if ($DOTFILES -eq $null){
	Write-hose "Set DOTFILES as PWD" -BackgroundColor DarkGreen -ForegroundColor White
	$DOTFILES = $PWD
}

# Install stuff
## Winget
Write-host "Installing winget" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-winget.ps1

Write-host "Installing various apps from winget" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-winget-apps.ps1

## Install Micro
Write-host "Installing Micro" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-micro.ps1

## Install Fonts
Write-host "Installing Fonts" -BackgroundColor DarkGreen -ForegroundColor White
& ./Fonts/install-fonts.ps1 # TODO Move ./Install and add all Hasklug fonts (with -Recurse)

# Setup Install Ubunt in WSL2
wsl --install -d "Ubuntu"

# Debloat
## Remove applications
Write-host "Removing unwanted applications" -BackgroundColor DarkGreen -ForegroundColor White
& ./Debloat/uninstall-winget-apps.ps1

## Empty desktop folder
Get-ChildItem -Path ~\Desktop -Include * -File -Recurse | foreach { $_.Delete()}

# Add configurations
## Pwshell 
New-Item -ItemType SymbolicLink -Path $profile -Target .\Config\profile.ps1

# Alacritty
$alacrittyProfile = Join-Path $HOME "\AppData\Roaming\alacritty\alacritty.yml"
New-Item -ItemType SymbolicLink -Path $alacrittyProfile -Target .\Config\alacritty.yml -Force

# Change keymaps (auto hotkeys)
& ./Autohotkey/setup.ps1

# Send Message to reboot machine on different colors
Write-host "Reboot to finish WSL installation" -BackgroundColor Red -ForegroundColor White
