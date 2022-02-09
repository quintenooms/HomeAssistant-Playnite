# HOME-ASSISTANT - PLAYNITE 'INTEGRATION'
# https://github.com/quintenooms/HomeAssistant-Playnite

# DEPENDENCIES
# Home-Assistant PowerShell Module
# https://github.com/flemmingss/Home-Assistant-PowerShell-Module

# PLEASE READ THE README FIRST FOR THE HOME-ASSISTANT SET-UP

# STEP 0 - Prepare the json for Home Assistant

$json = @"
{"entity_id":
"input_text.current_game",
"value":"None"}
"@


# STEP 1 - Import the Home-Assistant PowerShell-module.
Import-Module "path\to\the\PowerShell-module\Home-Assistant"


# STEP 2 - Create a active session with your local Home-Assistant instance.
New-HomeAssistantSession -ip your_homeassistant_ip -port 8123 -token your_homeassistant_token

# STEP 3 - Call the Home-Assistant service with the text 'None'.
Invoke-HomeAssistantService -service input_text.set_value -json $json