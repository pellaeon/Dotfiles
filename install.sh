#!/bin/bash
ln -s ~/Dotfiles/vimrc ~/.vimrc
ln -s ~/Dotfiles/vim ~/.vim
ln -s ~/Dotfiles/bashrc ~/.bashrc
ln -s ~/Dotfiles/screenrc ~/.screenrc
ln -s ~/Dotfiles/inputrc ~/.inputrc
ln -s ~/Dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/cshrc ~/.cshrc
ln -s ~/Dotfiles/complete ~/.complete

# Irssi
mkdir -p ~/.irssi/
ln -s ~/Dotfiles/irssi/config ~/.irssi/config

# SSH
mkdir -p ~/.ssh/
ln -s ~/Dotfiles/ssh/config ~/.ssh/config
