export PATH="$PATH:$HOME/.config/i3/scripts:$HOME/scripts"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="xst"
export VISUAL="nvim"
export EDITOR="nvim"
export READER="zathura"
export FILE="nnn"
export BROWSER="firefox"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export NNN_TMPFILE="/tmp/nnn"
export NNN_USE_EDITOR=1

export GOPATH="$HOME/go"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(nodenv init -)"

source "$HOME/.bashrc"
