#!/bin/bash

DOT_DIR="$HOME/dotfiles"

# Create link to dotfiles
for dotfile in .vimrc .screenrc .gitconfig
do
    ln -s $DOT_DIR/$dotfile $HOME/.
done

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create backup directory for vim
mkdir -p ${HOME}/.vimbackup
chmod 700 ${HOME}/.vimbackup

# Create logs directory for screen
mkdir -p ${HOME}/logs/screen

# Install starship.rs
if [ ! -f /usr/local/bin/starship ]; then
    curl -sS https://starship.rs/install.sh | sh
    eval "$(starship init bash)"
fi

# Setup screen
mkdir -p ${HOME}/.screen && chmod 700 ${HOME}/.screen
echo 'add the following statement to the .basrhc'
echo 'export SCREENDIR=${HOME}/.screen'

