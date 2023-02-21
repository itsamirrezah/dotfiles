#!/bin/bash

#Arandr
#NOTE: Save your configuration via arandr into ~/.screenlayout/monitor.sh
sh ~/.screenlayout/monitor.sh &;

#Picom Configuration
picom --config $HOME/.config/bspwm/picom.conf &

#Dex Autostart
dex -a -s /etc/xdg/autostart:~/.config/autostart/ &

#Cursor
xsetroot -cursor_name left_ptr;

#Restore Background
nitrogen --restore &;

# Network & Bluetooth Tray 
nm-applet &
blueberry-tray &

# Pollybar

#Keyboard Configuration
sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

