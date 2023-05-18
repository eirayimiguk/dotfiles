" Indent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Filetype Indent
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.c      setlocal sw=8 sts=8 ts=8 noexpandtab cindent
    autocmd BufNewFile,BufRead *.html   setlocal sw=2 sts=2 ts=2 expandtab   autoindent
    autocmd BufNewFile,BufRead *.js     setlocal sw=2 sts=2 ts=2 expandtab   autoindent
    autocmd BufNewFile,BufRead *.json   setlocal sw=2 sts=2 ts=2 expandtab   autoindent
    autocmd BufNewFile,BufRead *.py     setlocal sw=4 sts=4 ts=4 expandtab   autoindent
augroup END

