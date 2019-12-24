#!/bin/sh
#
# ~/.xinitrc

# hold caps_lock -> super
setxkbmap -option caps:super

# press caps_lock -> esc
killall xcape 2>/dev/null; xcape -e 'Super_L=Escape'

# keybindings
xbindkeys -f ~/.config/xbindkeysrc

# notifications manager
dunst > /dev/null 2>&1 &

# window manager
exec i3

