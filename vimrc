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

syntax enable

