export PATH="$PATH:$HOME/.config/i3/scripts"
export QT_QPA_PLATFORMTHEME="qt5ct"
export TERMINAL="urxvt"
export VISUAL="vim"
export EDITOR="vim"
export READER="zathura"
export FILE="nnn"
export BROWSER="firefox"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export NNN_TMPFILE="/tmp/nnn"
export NNN_USE_EDITOR=1

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source "$HOME/.bashrc"
