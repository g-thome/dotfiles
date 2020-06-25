#!/bin/sh

# hold caps_lock -> super
setxkbmap -option caps:super

# keyboard layouts
setxkbmap -layout us,us_intl -option grp:lctrl_lshift_toggle

# press caps_lock -> esc
killall xcape 2>/dev/null; xcape -e 'Super_L=Escape'

# compositor
picom -b

# keybindings
xbindkeys -f ~/.config/xbindkeysrc

# notifications manager
dunst > /dev/null 2>&1 &

# network manager systray icon
nm-applet &

# status bar and systray
polybar &

# wallpaper
xwallpaper --zoom that_one_shadow_of_the_colossus_wallpaper_everyone_loves.jpg 

# necessário para usar o mailspring
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# window manager
exec i3

