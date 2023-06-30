#!/bin/bash

DOT_DIR="$HOME/dotfiles"

echo "========================"
echo "general settings"
echo "========================"
ln -sv $DOT_DIR/.gitconfig $HOME/.gitconfig
ln -sv $DOT_DIR/.inputrc $HOME/.inputrc

echo "========================"
echo "vim / nvim"
echo "========================"
mkdir -p $HOME/.vimbackup
chmod 700 $HOME/.vimbackup

echo "========================"
echo "vim"
echo "========================"
mkdir -p $HOME/.vim/userautoload/init
mkdir -p $HOME/.vim/userautoload/plugins
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
ln -sv $DOT_DIR/vim/.vimrc $HOME/.vimrc
ln -sv $DOT_DIR/vim/userautoload/init/* $HOME/.vim/userautoload/init/
ln -sv $DOT_DIR/vim/userautoload/plugins/* $HOME/.vim/userautoload/plugins/

echo "========================"
echo "nvim"
echo "========================"
mkdir -p $HOME/.config/nvim/userautoload/init
mkdir -p $HOME/.config/nvim/userautoload/plugins
if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
ln -sv $DOT_DIR/vim/init.vim $HOME/.config/nvim/init.vim
ln -sv $DOT_DIR/vim/userautoload/init/* $HOME/.config/nvim/userautoload/init/
ln -sv $DOT_DIR/vim/userautoload/plugins/* $HOME/.config/nvim/userautoload/plugins/

echo "========================"
echo "gnu/screen"
echo "========================"
mkdir -p $HOME/logs/screen
mkdir -p $HOME/.screen && chmod 700 $HOME/.screen
ln -sv $DOT_DIR/.screenrc $HOME/.screenrc

echo "========================"
echo "tmux"
echo "========================"
mkdir -p $HOME/logs/tmux
ln -sv $DOT_DIR/.tmux.conf $HOME/.tmux.conf

echo "========================"
echo "bash"
echo "========================"
touch "${HOME}/.bash_local"
ln -sv $DOT_DIR/bash/.bashrc $HOME/.bashrc
ln -sv $DOT_DIR/bash/.bash_alias $HOME/.bash_alias
ln -sv $DOT_DIR/bash/.bash_function $HOME/.bash_function
ln -sv $DOT_DIR/bash/.bash_environment $HOME/.bash_environment

echo "========================"
echo "starship.rs"
echo "========================"
curl -sS https://starship.rs/install.sh | sh
ln -sv $DOT_DIR/starship/starship.toml $HOME/.config/starship.toml
