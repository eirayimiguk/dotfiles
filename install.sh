#!/bin/bash

DOT_DIR="$HOME/dotfiles"

for dotfile in .vimrc .screenrc
do
    ln -s $DOT_DIR/$dotfile $HOME/.
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

