" vim-plug
" ====================
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Basic configuration
" ====================
set fenc=utf-8
set autoread
set hidden
set cursorline
set ruler
set laststatus=2
set showmatch
set showmode
set showcmd

" Search
" ====================
set incsearch
set ignorecase
set smartcase
set wrapscan
set hlsearch

" Indent
" ====================
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" FileType
" ====================
autocmd FileType make setlocal noexpandtab

" key-bind <Insert Mode>
" ====================
inoremap jj <Esc>

" Color
" ====================
set t_Co=256
highlight Pmenu ctermfg=15 ctermbg=4
highlight PmenuSel ctermfg=0 ctermbg=7

syntax enable

