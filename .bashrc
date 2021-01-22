#
# ~/.bashrc
#

[[ $- != *i* ]] && return

# allows ctrl-s as save command for vim
stty -ixon

xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# PS1
eval "$(starship init bash)"

# node version control
eval "$(nodenv init -)"

# Enable history appending instead of overwriting. 
shopt -s histappend

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" 
