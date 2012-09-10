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

# Create English symlinks for easy navigation
if [ $LANGUAGE == 'zh_TW:zh' ]; then
	if [ -d '~/公共' ]; then
		ln -s ~/Public ~/公共
	fi
	if [ -d '~/圖片' ]; then
		ln -s ~/Pictures ~/圖片
	fi
	if [ -d '~/下載' ]; then
		ln -s ~/Downloads ~/下載
	fi
	if [ -d '~/文件' ]; then
		ln -s ~/Documents ~/文件
	fi
	if [ -d '~/音樂' ]; then
		ln -s ~/Music ~/音樂
	fi
	if [ -d '~/影片' ]; then
		ln -s ~/Video ~/影片
	fi
	if [ -d '~/桌面' ]; then
		ln -s ~/Desktop ~/桌面
	fi
fi
