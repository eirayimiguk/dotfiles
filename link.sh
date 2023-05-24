#!/bin/bash

DOT_DIR="$HOME/dotfiles"


echo "========================"
echo "general settings"
echo "========================"
ln -sv $DOT_DIR/.gitconfig $HOME/.gitconfig
ln -sv $DOT_DIR/.inputrc $HOME/.inputrc

echo "========================"
echo "obsidian"
echo "========================"
ln -sv $DOT_DIR/obsidian/.obsidian.vimrc $HOME/obsidian/vault/.obsidian.vimrc


echo "========================"
echo "vim"
echo "========================"
ln -sv $DOT_DIR/vim/.vimrc $HOME/.vimrc
ln -sv $DOT_DIR/vim/userautoload/init/* $HOME/.vim/userautoload/init/
ln -sv $DOT_DIR/vim/userautoload/plugins/* $HOME/.vim/userautoload/plugins/


echo "========================"
echo "nvim"
echo "========================"
ln -sv $DOT_DIR/vim/init.vim $HOME/.config/nvim/init.vim
ln -sv $DOT_DIR/vim/userautoload/init/* $HOME/.config/nvim/userautoload/init/
ln -sv $DOT_DIR/vim/userautoload/plugins/* $HOME/.config/nvim/userautoload/plugins/


echo "========================"
echo "gnu/screen"
echo "========================"
ln -sv $DOT_DIR/.screenrc $HOME/.screenrc


echo "========================"
echo "tmux"
echo "========================"
ln -sv $DOT_DIR/.tmux.conf $HOME/.tmux.conf


echo "========================"
echo "bash"
echo "========================"
ln -sv $DOT_DIR/bash/.bashrc $HOME/.bashrc
ln -sv $DOT_DIR/bash/.bashrc.alias $HOME/.bashrc.alias
ln -sv $DOT_DIR/bash/.bashrc.functions $HOME/.bashrc.functions
ln -sv $DOT_DIR/bash/starship/starship.toml $HOME/.config/starship.toml
