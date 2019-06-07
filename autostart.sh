#!/bin/sh

# ~/autostart.sh

# Compositor
compton --config ~/.config/compton/compton.conf &

# Restore wallpaper
nitrogen --restore &

# For keyboard volume controls
xfce4-volumed-pulse &

# Simple X Hotkey daemon
sxhkd &

while true ; do
   if acpi -a | grep off-line > /dev/null; then
       xsetroot -name "bat: $( acpi -b | awk '{ print $4 }' | tr -d ',' ) | vol: $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +"%a %b %d %R")"
   else
       xsetroot -name "vol $(amixer get Master | tail -1 | awk '{ print $5}' | tr -d '[]') | $(date +" %a, %b %d | %R") hrs  "
   fi
   # NOTE: You may tweak this value to get faster refresh.
   sleep 5s 
done &
