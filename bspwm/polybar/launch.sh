#!/usr/bin/env sh

#terminate already running bar instances
killall -q polybar;
#wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done;

polybar --reload mainbar-bspwm -c ~/.config/bspwm/polybar/config.ini &
