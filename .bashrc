#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# allows ctrl-s as save command for vim
stty -ixon

export PS1="[\u@\w]\[\e[32m\]\`parse_git_branch\`\[\e[m\] "

use_color=true

unset use_color safe_term match_lhs sh

xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
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

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" 
