eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" 
