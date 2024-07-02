# Floating Applications
bspc rule -a Arandr state=floating
bspc rule -a Archlinux-tweak-tool.py state=floating
bspc rule -a Arcolinux-welcome-app.py state=floating
bspc rule -a Nitrogen state=floating
bspc rule -a rofi state=floating sticky=on
bspc rule -a feh state=floating
bspc rule -a Galculator state=floating
#==================================================
# Desktop Rules
bspc rule -a Brave-browser:*:Todoist desktop="^1" follow=on focus=on
bspc rule -a Brave-browser:*:Linear desktop="^1" follow=on focus=on
bspc rule -a Code desktop="^3" follow=on focus=on
bspc rule -a Brave-browser:*:Excalidraw desktop="^4" follow=on focus=on
bspc rule -a Brave-browser:*:CodeSandbox desktop="^4" follow=on focus=on
bspc rule -a discord desktop="^5" follow=on focus=on
bspc rule -a TelegramDesktop desktop="^5" follow=on focus=on
bspc rule -a thunderbird desktop="^5" follow=on focus=on
bspc rule -a Element desktop="^5" follow=on focus=on
bspc rule -a LibreWolf desktop="^6" follow=on focus=on
bspc rule -a streamlink-twitch-gui desktop="^6" follow=on focus=on
bspc rule -a qBittorrent desktop="^8" follow=on focus=on
bspc rule -a Brave-browser:*:Spotify desktop="^8" follow=on focus=on state=floating
bspc rule -a Blueberry.py state=floating desktop="^8" follow=on focus=on
bspc rule -a Pavucontrol state=floating desktop="^8" follow=on focus=on
bspc rule -a Windscribe2 state=floating desktop="^8" border=off layer=below
