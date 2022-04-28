#!/bin/bash

DOT_DIR="$HOME/dotfiles"

for dotfile in .vimrc .screenrc .gitconfig
do
    ln -s $DOT_DIR/$dotfile $HOME/.
done

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create logs directory for screen
mkdir -p ${HOME}/logs/screen

