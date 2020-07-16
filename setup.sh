#!/bin/sh

apt-get install git zsh zsh-autosuggestions autojump \
	ttf-ubuntu-font-family ttf-dejavu


echo "Setup zsh"
mkdir ~/.zsh
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
if [ -f ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc.bak
fi

ln -fs ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -fs ~/.dotfiles/zsh/antigen.zsh ~/.antigen.zsh
ln -fs ~/.dotfiles/zsh/aliases.zsh ~/.aliases.zsh
