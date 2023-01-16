# Winget
Write-host "Installing winget" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-winget.ps1

Write-host "Installing various apps from winget" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-winget-apps.ps1

# Install Micro
Write-host "Installing Micro" -BackgroundColor DarkGreen -ForegroundColor White
& ./Install/install-micro.ps1

# Install Fonts

# Setup WSL2

# Debloat

## Remove applications
Write-host "Removing unwanted applications" -BackgroundColor DarkGreen -ForegroundColor White
& ./Debloat/uninstall-winget-apps.ps1

## Empty desktop folder
## Unpin app from taskbar

# Add configurations
## Pwshell 
### alias

## Windows terminale
### No top bar
### Start maximize
### Stop warning copy multiple line

## Youtube-dl

## Micro
### Keybinding more alike vim

# Change keymaps (auto hotkeys)

# Add profile icon
