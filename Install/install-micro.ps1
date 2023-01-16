# Download Micro from GitHub
Invoke-WebRequest -Uri https://github.com/zyedidia/micro/releases/download/v2.0.11/micro-2.0.11-win64.zip -OutFile .\micro-2.0.11-win64.zip

# Extract to ~/Dev
Expand-Archive -Path .\micro-2.0.11-win64.zip -DestinationPath ~\.dev -Force

# Remove zimp
Remove-Item -Path .\micro-2.0.11-win64.zip