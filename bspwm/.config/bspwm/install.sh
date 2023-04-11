echo "install dependencies..."
sudo pacman -S - < requirement.txt
echo "copy configuration"
cp -r . ~/.config/bspwm/.
cp -r ../polybar ~/.config/.
cp -r ../rofi ~/.config/.
cp -r ../picom ~/.config/.
cp -r ../scripts ~/.config/.
cp -r ../dunst ~/.config/.
echo "remap caps lock: change keyboard layout"
sudo localectl set-x11-keymap us "grp:caps_toggle"
