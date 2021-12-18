## Setup Startship Prompt
eval "$(starship init zsh)"

## Setup FNM to Manage Node Versions
eval "$(fnm env)"

## Use CONTROL-N To Accept Auto Suggestion
bindkey '^n' autosuggest-accept

## Use CONTROL-Y To Execute Auto Suggestion
bindkey '^y' autosuggest-execute

## Source Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="$HOME/.fnm":$PATH
