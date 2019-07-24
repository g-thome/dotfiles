#!/bin/sh
#
# ~/.xinitrc

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
modmaprc=$HOME/.xmodmaprc

# merge in defaults and keymaps
[ -f $sysresources ] && xrdb -merge $sysresources
[ -f $sysmodmap ] && xmodmap $sysmodmap
[ -f "$userresources" ] && xrdb -merge "$userresources"
[ -f "$usermodmap" ] && xmodmap "$usermodmap"
[ -f "$modmaprc" ] && xmodmap "$modmaprc"

# hold caps_lock -> super
setxkbmap -option caps:super

# press caps_lock -> esc
killall xcape 2>/dev/null; xcape -e 'Super_L=Escape'

# keybindings
xbindkeys -f ~/.config/xbindkeysrc

# notifications manager
dunst > /dev/null 2>&1 &

# wallpaper
xwallpaper --zoom Pictures/Wallpapers/L_samurai_japan_flag.jpg

# window manager
exec i3

