#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

execute "gsettings set com.canonical.indicator.bluetooth visible false" \
    "Hide bluetooth icon from the menu bar"

execute "gsettings set org.gnome.desktop.background picture-options 'stretched'" \
    "Set desktop background image options"

execute "gsettings set org.gnome.libgnomekbd.keyboard layouts \"[ 'us', 'es' ]\"" \
    "Set keyboard languages"

execute "gsettings set com.canonical.Unity.Launcher favorites \"[
            'ubiquity-gtkui.desktop',
            'nautilus-home.desktop'
         ]\"" \
    "Set Launcher favorites"
