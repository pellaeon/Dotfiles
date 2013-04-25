#!/bin/sh

# Link config files
for file in vimrc vim cshrc screenrc inputrc gitconfig
do
	if [ ! -e ~/.${file} ]; then
		ln -s `pwd -P`/${file} ~/.${file}
	elif [ -L ~/.${file} ]; then
		rm ~/.${file}
		ln -s `pwd -P`/${file} ~/.${file}
	else
		echo "~/.${file} already exists!"
	fi
done

# Create directories, link config
for dir in ssh irssi
do
	if [ ! -e ~/.${dir} ]; then
		mkdir ~/.${dir}
		ln -s `pwd -P`/${dir}/config ~/.${dir}/config
	else
		echo "~/.${dir} already exists!"
	fi
done
		
