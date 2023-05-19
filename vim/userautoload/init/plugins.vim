" Vim-Plug

if has('nvim')
    call plug#begin('~/.local/share/nvim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'luochen1990/rainbow'

" Color
Plug 'tyrannicaltoucan/vim-deep-space', {'do': 'cp colors/* ~/.config/nvim/colors/'}

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rust
Plug 'rust-lang/rust.vim'

call plug#end()

