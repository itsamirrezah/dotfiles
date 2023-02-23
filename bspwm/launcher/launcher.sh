THEME_1="simple"
THEME_2="dark"
if [ "$1" = "$THEME_1" ];
then
	rofi -modi drun -show window -line-padding 4 \
		-columns 2 -padding 50 -hide-scrollbar \
		-show-icons -drun-icon-theme "Qogir-dark" -font "Droid Sans Regular 10"

elif [ "$1" = "$THEME_2" ];
	rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/bspwm/launcher/rofi/theme-dark.rasi
fi


