#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# allows ctrl-s as save command for vim
stty -ixon

use_color=true

unset use_color safe_term match_lhs sh

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s checkwinsize

shopt -s expand_aliases

# implicit cd
shopt -s autocd

# virtual environments
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(nodenv init -)"

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# PS1
eval "$(starship init bash)"

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" 

eval "$(thefuck --alias)"
