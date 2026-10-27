#!/usr/bin/env bash
set -euo pipefail

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  KEEP_ZSHRC=yes RUNZSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
    "$ZSH_CUSTOM/themes/powerlevel10k"
fi

printf 'dotfiles installed: %s\n' "$(date -Iseconds)" > "$HOME/.dotfiles-installed"