#!/bin/bash

#Arandr
#NOTE: Save your configuration via arandr into ~/.screenlayout/monitor.sh
if [[ -f ~/.screenlayout/monitor.sh ]]; then
    sh ~/.screenlayout/monitor.sh &
fi

#Picom Configuration
picom --config $HOME/.config/picom/picom.conf &

#Dex Autostart
dex -a -s /etc/xdg/autostart:~/.config/autostart/ &

#Cursor
xsetroot -cursor_name left_ptr

#Restore Background
nitrogen --restore &

# Network & Bluetooth Tray 
nm-applet &
blueberry-tray &

#Notification
dunst --conf ~/.config/dunst/dunstrc &

#Pollybar
$HOME/.config/polybar/launch.sh &

#Keyboard Configuration
sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

#Polkit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

#Keyboad Layout
setxkbmap -layout us,ir
setxkbmap -option 'grp:caps_toggle'
export _JAVA_AWT_WM_NONREPARENTING=1
