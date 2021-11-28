call plug#begin('~/.vim/plugged')

Plug 'bronson/vim-trailing-whitespace'

call plug#end()

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set fenc=utf-8
set autoread
set hidden
set showcmd
set showmatch
set cursorline

set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

augroup fileTypeIndent
    autocmd!

    autocmd BufNewFile,BufRead *.c  setlocal sw=8 sts=8 ts=8 noexpandtab cindent
    autocmd BufNewFile,BufRead *.js setlocal sw=2 sts=2 ts=2 expandtab   autoindent
augroup END

syntax on

