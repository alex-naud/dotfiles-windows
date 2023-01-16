# Download Winget from GitHub
Invoke-WebRequest -Uri https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile .\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# Install msixbundle
Add-AppXPackage -Path .\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# Remove bundle
Remove-Item -Path .\MicrosoftDesktopAppInstaller_8wekyb3d8bbwe.msixbundle