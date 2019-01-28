#!/bin/bash

### Set up Vim for Python
# Reference: https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions
## Check VIM version
vim --version

## Install VIM
#sudo apt-get remove vim-tiny
#sudo apt-get update
#sudo apt-get install vim

## Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Copy .vimrc file
cp ./.vimrc ~/.vimrc

## Install pathogen.vim to mange `runtimepath` with ease
mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


## Install jedi-vim for autocompletion
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

## Install plugins specified in vimrc
echo | echo | vim +PluginInstall +qall &>/dev/null
