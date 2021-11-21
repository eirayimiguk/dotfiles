#!/bin/bash

DOT_DIR="$HOME/dotfiles"

for dotfile in .vimrc
do
    ln -s $DOT_DIR/$dotfile $HOME/.
done
