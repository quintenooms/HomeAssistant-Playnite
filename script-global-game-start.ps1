# HOME-ASSISTANT - PLAYNITE 'INTEGRATION'
# https://github.com/quintenooms/HomeAssistant-Playnite

# DEPENDENCIES
# Home-Assistant PowerShell Module
# https://github.com/flemmingss/Home-Assistant-PowerShell-Module
# 
# Playnite SDK
# Included by default when the code is executed by Playnite.

# PLEASE READ THE README FIRST FOR THE HOME-ASSISTANT SET-UP


# STEP 0 - Prepare the json for Home Assistant
$GameTitle =  $Game

$json = @"
{"entity_id":
"input_text.current_game",
"value":"$GameTitle"}
"@


# STEP 1 - Import the Home-Assistant PowerShell-module.
Import-Module "path\to\the\PowerShell-module\Home-Assistant"


# STEP 2 - Create a active session with your local Home-Assistant instance.
New-HomeAssistantSession -ip your_homeassistant_ip -port 8123 -token your_homeassistant_token


# STEP 3 - Copy the Cover image of the active game over to the /local folder of Home-Assistant. Each time replacing the last active game Cover Image.
Copy-Item "%appdata%\Playnite\library\files\$($Game.CoverImage)" -Destination "HOMEASSISTANT-CONFIG\www\image\game.jpg"


# STEP 4 - Call the Home-Assistant service with the name of the current game.
Invoke-HomeAssistantService -service input_text.set_value -json $json