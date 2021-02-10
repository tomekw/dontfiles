#!/bin/bash

case $(wofi -dmenu << EOF | sed 's/^ *//'
    Shutdown
    Reboot
    Log off
    Lock
    Cancel
EOF
) in
    "Shutdown")
        systemctl poweroff
        ;;
    "Reboot")
        systemctl reboot
        ;;
    "Lock")
        swaylock -i $HOME/Pictures/Wallpapers/surface_laptop_3_4k.jpg
        ;;
    "Log off")
        swaymsg exit
        ;;
esac
