Installation

    git clone git://github.com/pellaeon/Dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by
running the commands:

    cd Dotfiles
    git submodule init
    git submodule update

Create symlinks:

    ln -s ~/Dotfiles/bashrc ~/.bashrc
    ln -s ~/Dotfiles/vimrc ~/.vimrc
    ln -s ~/Dotfiles/gvimrc ~/.gvimrc
    ln -s ~/Dotfiles/irbrc ~/.irbrc
    ln -s ~/Dotfiles/vim ~/.vim
    ln -s ~/Dotfiles/ctags ~/.ctags
    ln -s ~/Dotfiles/jshintrc ~/.jshintrc

# VIM #

My preferences for Vim are stored in `Dotfiles/vimrc` and `Dotfiles/gvimrc`
respectively. All plugins and scripts are stored in the `Dotfiles/vim`
directory.

## Adding Plugin Bundles ##

Plugins that are published on github can be installed as submodules. For
example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/Dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git
    
As well as checkout out the git repo into the
`vim/bundle/vim-javascript` directory. You can then commit these changes
as follows:

    git add .
    git ci -m "Added the javascript bundle"

# Credits #
    Modified from https://github.com/nelstrom/dotfiles/blob/master/README.markdown

[jsbun]: http://github.com/pangloss/vim-javascript.git
[ap]: http://github.com/michaeldv/awesome_print
[i_editor]: http://github.com/jberkel/interactive_editor
