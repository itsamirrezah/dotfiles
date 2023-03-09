echo "install dependencies..."
sudo pacman -S - < requirement.txt
echo "copy configuration"
cp -r . ~/.config/bspwm/.
echo "remap caps lock: change keyboard layout"
sudo localectl set-x11-keymap us "grp:caps_toggle"
