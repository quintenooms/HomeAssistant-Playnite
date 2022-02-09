# HomeAssistant-Playnite
A PowerShell script feeding details about the currently played game from Playnite to Home Assistant. These little snippets are nowhere near a 'real integration' for Home Assistant but work perfectly for my usecase. And hey: sharing is caring. :)

## Dependencies
[Home Assistant PowerShell Module by flemmingss](https://github.com/flemmingss/Home-Assistant-PowerShell-Module)

## What it does
### Updating a input_text-entity in Home-Assistant
Playnite gives you the possibility to run PowerShell-scripts during the startup and closing moments of a game. Using the [Home Assistant PowerShell module by flemmingss](https://github.com/flemmingss/Home-Assistant-PowerShell-Module) and the [integrated Playnite SDK](https://playnite.link/docs/), I update a 'input_text'-entity in Home Assistant with the current game title. Afterwards, I run the same script but update the entity with the word 'None'.

### Providing the Cover Image of the current game to Home-Assistant
As a little extra: Right before updating the entity, the script copies the current game's Cover Image over to the Samba share of Home-assistant. By placing this in the /www-folder of Home Assistant, the image is usable in the lovelace UI. Great for a little extra UX-spice.

## Set-up in Home Assistant
Your Home-assistant instance needs to have a input_text entity available to sent the current game's title to. This kind of entity is called a 'Helper'. Navigate to these helpers using the following button.

[![Open your Home Assistant instance and show your helper entities.](https://my.home-assistant.io/badges/helpers.svg)](https://my.home-assistant.io/redirect/helpers/)

The provided script tries to update the 'input_text.current_game'-entity. You are of course free to change this to whatever you fancy.

## Use cases
This makes it possible to automate Home Assistant for the specific game you are playing. For example: dim the lights for 'Dying Light 2', but keep them on for 'Putt-Putt Save the Zoo'!