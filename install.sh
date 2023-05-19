#!/bin/bash

DOT_DIR="$HOME/dotfiles"


echo "### Setup - Git ###"

ln -s $DOT_DIR/.gitconfig $HOME/.gitconfig


echo "### Setup - Vim / NeoVim ###"

mkdir -p $HOME/.vimbackup
chmod 700 $HOME/.vimbackup

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "### Setup - Vim ###"

# Create directories
mkdir -p $HOME/.vim/userautoload/init
mkdir -p $HOME/.vim/userautoload/plugins

ln -s $DOT_DIR/vim/.vimrc $HOME/.vimrc
ln -s $DOT_DIR/vim/userautoload/init/* $HOME/.vim/userautoload/init/
ln -s $DOT_DIR/vim/userautoload/plugins/* $HOME/.vim/userautoload/plugins/


echo "### Setup - NeoVim ###"


# Create directories
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/userautoload/init
mkdir -p $HOME/.config/nvim/userautoload/plugins

ln -s $DOT_DIR/vim/init.vim $HOME/.config/nvim/init.vim
ln -s $DOT_DIR/vim/userautoload/init/* $HOME/.config/nvim/userautoload/init/
ln -s $DOT_DIR/vim/userautoload/plugins/* $HOME/.config/nvim/userautoload/plugins/


echo "### Setup - gnu/screen ###"

mkdir -p $HOME/logs/screen
mkdir -p $HOME/.screen && chmod 700 $HOME/.screen

ln -s $DOT_DIR/.screenrc $HOME/.screenrc
echo 'export SCREENDIR=${HOME}/.screen'

