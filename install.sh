#!/bin/sh

# Link config files
for file in vimrc vim cshrc screenrc inputrc gitconfig
do
	if [ ! -e ~/.${file} ]; then
		ln -s `pwd -P`/${file} ~/.${file}
	else
		rm ~/.${file}
		ln -s `pwd -P`/${file} ~/.${file}
	fi
done

# Create directories, link config
for dir in ssh irssi
do
	if [ ! -e ~/.${dir} ]; then
		mkdir ~/.${dir}
		ln -s `pwd -P`/${dir}/config ~/.${dir}/config
	else
		rm -r ~/.${dir}
		mkdir ~/.${dir}
		ln -s `pwd -P`/${dir}/config ~/.${dir}/config
	fi
done

if [ $SHELL = "/bin/tcsh" ]; then
	source .cshrc
fi
