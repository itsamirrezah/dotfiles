read -p "Enter session: " session
#create autologin group
groupadd -r autologin
#add current user to autologin group
sudo gpasswd -a $USER autologin
#lightdm configs
sudo sed -i 's/'#autologin-user='/'autologin-user=USER'/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/'#autologin-session='/'autologin-session=$session'/g' /etc/lightdm/lightdm.conf
echo "done!"
