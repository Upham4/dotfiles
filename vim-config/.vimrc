#Adds Vundle to Vim's runtime path
set rtp+=~/.vim/bundle/Vundle.vim
#Start of Vundle setup 
call vundle#begin()

#Installs Vundle and plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'

#End of Vundle Setup
call vundle#end()
#Applies the colorscheme
colorscheme jellybeans
