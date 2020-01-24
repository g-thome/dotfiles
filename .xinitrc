#!/bin/sh
#
# ~/.xinitrc

# hold caps_lock -> super
setxkbmap -option caps:super

# keyboard layouts
setxkbmap -model pc104 -layout us,us_intl,ir,ar grp:alt_shift_toggle

# press caps_lock -> esc
killall xcape 2>/dev/null; xcape -e 'Super_L=Escape'

# compositor
compton -b

# keybindings
xbindkeys -f ~/.config/xbindkeysrc

# notifications manager
dunst > /dev/null 2>&1 &

# necessário para usar o mailspring
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# window manager
exec i3

