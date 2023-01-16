# Based on: https://community.spiceworks.com/topic/2203658-check-if-choco-already-installed-and-install-if-not


# Check if chocolatey is already installed
$testchoco = powershell choco -v

# Install chocolatey
if(-not($testchoco)) {
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy bypass -Scope Process -Force; 
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
    Write-Output "Chocolatey Version $testchoco is already installed"
}

# Install apps
choco install qpdf youtube-dl ffmpeg paint.net veracrypt boxcryptor musicbee nerd-fonts-3270 nano -y
