#!/bin/bash

# Set up Vim for Python
# Check VIM version
vim --version

# Install VIM
sudo apt-get remove vim-tiny
sudo apt-get update
sudo apt-get install vim

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy vimrc file
cp ./vimrc ~/.vimrc

# Install pathogen.vim to mange `runtimepath` with ease
mkdir -p ~/.vim/autoload && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins specified in vimrc
vim +PluginInstall +qall
