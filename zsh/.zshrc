## Add Path to fnm
export PATH="$HOME/.fnm":$PATH

## Setup Startship Prompt
eval "$(starship init zsh)"

## Setup FNM to Manage Node Versions
eval "$(fnm env)"

## CONTROL-N Accept Auto Suggestion
bindkey '^n' autosuggest-accept

## CONTROL-Y Execute Auto Suggestion
bindkey '^y' autosuggest-execute

## Source Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

