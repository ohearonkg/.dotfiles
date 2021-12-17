## Setup Startship Prompt
eval "$(starship init zsh)"

## Setup FNM to Manage Node Versions
eval "$(fnm env)"

## Use CONTROL-Y To Accept Auto Suggestion
bindkey '^y' autosuggest-accept

## Source Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
