#!/bin/bash

# Copies .vimrc from this folder to home
cp ./.vimrc $HOME/.vimrc

# Installs Vundle if it does not exist
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi

# Installs plugins from .vimrc
vim +PluginInstall +qall

# Ciations
# vim: https://vimhelp.org/
# vundle: https://stackoverflow.com/questions/47956670/how-to-install-plugins-in-vim-using-vundle
