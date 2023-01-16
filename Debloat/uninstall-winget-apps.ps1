# Create apps object
$apps = @(

	    # Utilities
        @{name = "Microsoft.YourPhone_8wekyb3d8bbwe" },
        @{name = "SpotifyAB.SpotifyMusic_zpdnekdrzrea0"},
        @{name = "MicrosoftTeams_8wekyb3d8bbwe"},
        @{name = "Cortana"},
        @{name = "Microsoft News"},
        @{name = "MSN Weather"},
        @{name = "Get Help"},
        @{name = "Microsoft Tips"},
        @{name = "Microsoft Solitaire Collection"},
        @{name = "Microsoft Sticky Notes"},
        @{name = "Microsoft People"},
        @{name = "Microsoft To Do"},
        @{name = "Feedback Hub"},
        @{name = "Windows Maps"},
        @{name = "Xbox TCUI"},
        @{name = "Xbox Game Bar Plugin"},
        @{name = "Xbox Game Bar"},
        @{name = "Xbox Identity Provider"},
        @{name = "Xbox Game Speech Window"},
        @{name = "Microsoft Family"},
        @{name = "Windows Web Experience Pack"},
        @{name = "Quick Assist"},
        @{name = "Mail and Calendar"},
        @{name = "Microsoft.WindowsTerminal"},
        @{name = "Office"}
        
);

# Uninstall apps if found
Foreach ($app in $apps) { 
    #check if the app is already installed
    $listApp = winget list --exact -q $app.name

    # Install apps
    if ([String]::Join("", $listApp).Contains($app.name)) {
         Write-host "Uninstalling:" $app.name
         winget uninstall --exact --silent $app.name   
       }
    else {
    	Write-host $app.name "not found"
    }
}
