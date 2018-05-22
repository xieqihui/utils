#!/bin/bash

### Set up Vim for Python
# Reference: https://realpython.com/vim-and-python-a-match-made-in-heaven/#vim-extensions
## Check VIM version
vim --version

## Install VIM
sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim

## Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Copy vimrc file
cp ./vimrc ~/.vimrc

## Install pathogen.vim to mange `runtimepath` with ease
mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Install plugins specified in vimrc
vim +PluginInstall +qall

## Install YouCompleteMe
# https://github.com/Valloric/YouCompleteMe#mac-os-x-super-quick-installation
# Install development tools and CMake
sudo apt-get install build-essential cmake
# Make sure you have Python headers installed:
sudo apt-get install python-dev python3-dev
# Compile YCM without sematic support of C-family languages
cd ~/.vim/bundle/YouCompleteMe
./install.py
