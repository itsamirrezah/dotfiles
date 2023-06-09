#!/bin/bash

THEME_1="simple"
THEME_2="dark"
if [ "$1" = "$THEME_1" ]
then
	rofi -terminal alacritty -sensible-terminal -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/rofi/rofi/blue-dark.rasi;
elif [ "$1" = "$THEME_2" ]
then
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/rofi/rofi/theme-dark.rasi;
fi
