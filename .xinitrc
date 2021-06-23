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

# network tray icon
nm-applet &


# monitors; should change this to a script later
xrandr --output HDMI-1-0 --auto --primary --right-of eDP-1

# set wallpaper at random from wallpapers directory
xwallpaper --zoom "$(fd . ~/Pictures/Wallpapers | sort -R | tail -1)"

polybar -r main &

# window manager
exec i3
