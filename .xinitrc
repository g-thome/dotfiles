#!/bin/sh
#
# ~/.xinitrc

# hold caps_lock -> super
setxkbmap -option caps:super

# keyboard layouts
# setxkbmap -model pc104 -layout us,us_intl,ir,jp grp:alt_shift_toggle

# press caps_lock -> esc
killall xcape 2>/dev/null; xcape -e 'Super_L=Escape'

# compositor
picom -b

# keybindings
xbindkeys -f ~/.config/xbindkeysrc

# notifications manager
dunst > /dev/null 2>&1 &

nm-applet &

wpc --directory ~/Pictures/Wallpapers --maxage 6 --background --local

# window manager
exec i3

