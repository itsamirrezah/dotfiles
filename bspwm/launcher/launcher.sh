#!/bin/bash

THEME_1="simple"
THEME_2="dark"
if [ "$1" = "$THEME_1" ]
then
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/bspwm/launcher/rofi/blue-dark.rasi;
elif [ "$1" = "$THEME_2" ]
then
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/bspwm/launcher/rofi/theme-dark.rasi;
fi
