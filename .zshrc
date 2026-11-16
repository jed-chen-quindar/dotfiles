# Disable Powerlevel10k's cached pre-rendered prompt for consistent terminal startup.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( git zsh-history-substring-search zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Devcontainer logins. Skipped where the image hasn't defined ca-login and ecr-login.
(( $+aliases[ca-login] )) && ca-login >/dev/null
(( $+aliases[ecr-login] )) && ecr-login >/dev/null
