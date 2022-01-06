## Add Path to fnm
export PATH="$HOME/.fnm":$PATH

## Setup Startship Prompt
eval "$(starship init zsh)"

## Setup FNM to Manage Node Versions
## Where --use-on-cd enables FNM to respect versions of Node
## specified within a .node-version of .nvmrc file
eval "$(fnm env --use-on-cd)"

## CONTROL-N Accept Auto Suggestion
bindkey '^n' autosuggest-accept

## CONTROL-Y Execute Auto Suggestion
bindkey '^y' autosuggest-execute

## Source Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

