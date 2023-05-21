#!/bin/bash

# Starship.rs
curl -sS https://starship.rs/install.sh | sh

# Vim / NeoVim
mkdir -p $HOME/.vimbackup
chmod 700 $HOME/.vimbackup

# Vim
mkdir -p $HOME/.vim/userautoload/init
mkdir -p $HOME/.vim/userautoload/plugins

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NeoVim
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/userautoload/init
mkdir -p $HOME/.config/nvim/userautoload/plugins

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# GNU/Screen
mkdir -p $HOME/logs/screen
mkdir -p $HOME/.screen && chmod 700 $HOME/.screen

# tmux
mkdir -p $HOME/logs/tmux
