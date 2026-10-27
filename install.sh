#!/bin/bash

# 1. Install Oh My Zsh (Unattended mode)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  KEEP_ZSHRC=yes RUNZSH=no sh -c "$(curl -fsSL https://githubusercontent.com)"
fi

# 2. Install Powerlevel10k theme into the Oh My Zsh custom folder
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com "$ZSH_CUSTOM/themes/powerlevel10k"
fi
