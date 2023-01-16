$GHFOLDER = Join-Path $HOME "GitHub"
$GHUSER = "alex-naud"
$DOTFILES = Join-Path $GHFOLDER -ChildPath $GHUSER | Join-Path -ChildPath "dotfiles-windows"

# Alias
New-Alias micro ~\.dev\micro-2.0.11\micro.exe
New-Alias l ls
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# CD functions
function ghf {
	$path = Join-Path $GHFOLDER $GHUSER
	Set-Location $path}
	
function dot {Set-Location $DOTFILES}

