## Based on this solution: https://chrislayers.com/2021/08/01/scripting-winget/

$apps = @(

    # Utilities
    @{name = "Mozilla.Firefox" },
    @{name = "Brave.Brave"}, 
    @{name = "SumatraPDF.SumatraPDF" },
    @{name = "Adobe.Acrobat.Reader.64-bit"},	
    @{name = "VideoLAN.VLC" }, 
    @{name = "7zip.7zip" }, 
    @{name = "JohnMacFarlane.Pandoc" },
    @{name = "youtube-dl.youtube-dl"},
    @{name = "AutoHotkey.AutoHotkey"},

    # Network tools
    @{name = "ProtonTechnologies.ProtonVPN" }, 
    @{name = "qBittorrent.qBittorrent" },
	
    # Dev tools
    @{name = "Microsoft.PowerShell" },
    @{name = "gerardog.gsudo" },	
    @{name = "Microsoft.PowerToys" },
    @{name = "Microsoft.WindowsTerminal" }, 
    @{name = "Git.Git" },
    @{name = "GitHub.cli" },
    @{name = "Alacritty.Alacritty"},

	# Work
    @{name = "TomWatson.BreakTimer" },
    @{name = "SlackTechnologies.Slack" }, # MOVE
	
    # Graphic tools
    @{name = "Inkscape.Inkscape"},

	# Cloud
	@{name = "pCloudAG.pCloudDrive"},
	
	# Office
	# LIBRE OFFICE
    @{name = "Zotero.Zotero"},

    # Encryption
    @{name = "KeePassXCTeam.KeePassXC"},
	
    # Music
    @{name = "TIDALMusicAS.TIDAL"}
);

## Install all aps if necessary
Foreach ($app in $apps) { 
    #check if the app is already installed
    $listApp = winget list --exact -q $app.name
	
	# Install apps
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-host "Installing:" $app.name
        winget install --exact --silent --accept-package-agreements --accept-source-agreements $app.name   
    }
	
	# Skip install
    else {
        Write-host "Skipping Install of " $app.name
    }
}

