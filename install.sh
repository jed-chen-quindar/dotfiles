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

ln -sf ~/dotfiles/.zshrc ~
ln -sf ~/dotfiles/.p10k.zsh ~

zsh_path="$(command -v zsh)"
chsh -s "$zsh_path" "$USER"
