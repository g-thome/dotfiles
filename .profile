#!/bin/sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$(find ~/Scripts -type d -printf ":%p"):$HOME/go/bin:$PYENV_ROOT"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="kitty"
export VISUAL="nvim"
export EDITOR="nvim"
export READER="zathura"
export BROWSER="firefox"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

export FZF_DEFAULT_COMMAND='rg --files'

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

eval "$(pyenv init --path)"
. "~/.bashrc"

[ ! $DISPLAY ] && [ $XDG_VTNR -eq 1 ] && exec startx
