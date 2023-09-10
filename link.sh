#!/bin/bash
DOT_DIR="$HOME/dotfiles"

# symlink
ln -sv $DOT_DIR/bashrc $HOME/.bashrc
ln -sv $DOT_DIR/gitconfig $HOME/.gitconfig
ln -sv $DOT_DIR/gitconfig_global $HOME/.gitconfig_global
ln -sv $DOT_DIR/screenrc $HOME/.screenrc
ln -sv $DOT_DIR/inputrc $HOME/.inputrc
ln -sv $DOT_DIR/tmux.conf $HOME/.tmux.conf
ln -sv $DOT_DIR/starship.toml $HOME/.config/starship.toml
ln -sv $DOT_DIR/vimrc $HOME/.vimrc

# create local files
touch $HOME/.gitconfig.user && echo "Please edit the ~/.gitconfig.user"
touch $HOME/.bashrc.local && echo "Please edit the ~/.bashrc.local"

