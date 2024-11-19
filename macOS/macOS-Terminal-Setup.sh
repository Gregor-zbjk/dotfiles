#!/usr/bin/env bash

# Copyright (c) 2021-2024 Gregor Zobjak
# Author: Gregor-zbjk (Gregor Zobjak)
# License: ---
# https://.../

# activate TouchID for sudo:
sed "s/^#auth/auth/" /etc/pam.d/sudo_local.template | sudo tee /etc/pam.d/sudo_local

# install oh-my-posh
brew update
brew install git iterm2 oh-my-posh zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting font-hack-nerd-font

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerline10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i -e "s~robbyrussell~powerlevel10k/powerlevel10k~g" ~/.zshrc

# diff so fancy config
git config --global core.pager "diff-so-fancy | less --tabs=4 -RF"
git config --global interactive.diffFilter "diff-so-fancy --patch"

# Setup Aliases
## ls replacment aliases
echo "setting alias ls"
echo "alias ls='eza --icons --group-directories-first'" >> ~/.zshrc
echo "setting alias ll"
echo "alias ll='eza -l --icons --no-user --group-directories-first  --time-style long-iso'" >> ~/.zshrc
echo "setting alias la"
echo "alias la='eza -la --icons --no-user --group-directories-first  --time-style long-iso'" >> ~/.zshrc

