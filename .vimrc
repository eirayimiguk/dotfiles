" Vim-Plug
call plug#begin('~/.vim/plugged')

" Color scheme
Plug 'morhetz/gruvbox'

" Common
Plug 'bronson/vim-trailing-whitespace'
Plug 'MetalPhaeton/easybracket-vim'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'

call plug#end()

" Keybind
inoremap <silent> jj <ESC>

" Common
set number
set fenc=utf-8
set autoread
set hidden
set showmatch
set cursorline

" Indent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Status
set laststatus=2
set showmode
set showcmd
set ruler

" Search
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Filetype Indent
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.c      setlocal sw=8 sts=8 ts=8 noexpandtab cindent
    autocmd BufNewFile,BufRead *.js     setlocal sw=2 sts=2 ts=2 expandtab   autoindent
    autocmd BufNewFile,BufRead *.json   setlocal sw=2 sts=2 ts=2 expandtab   autoindent
    autocmd BufNewFile,BufRead *.py     setlocal sw=4 sts=4 ts=4 expandtab   autoindent
    autocmd BufNewFile,BufRead *.html   setlocal sw=2 sts=2 ts=2 expandtab   autoindent
augroup END

" Appearance
colorscheme gruvbox
set background=dark
set t_Co=256

syntax on

