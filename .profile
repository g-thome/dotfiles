#!/bin/sh

export PATH="$PATH:$(find /home/gabriel/scripts -type d -printf ":%p"):~/.cargo/bin"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="alacritty"
export VISUAL="nvim"
export EDITOR="nvim"
export READER="zathura"
export BROWSER="firefox"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GOPATH="$HOME/go"


. "/home/gabriel/.bashrc"
