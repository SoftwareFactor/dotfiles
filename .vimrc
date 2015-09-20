" Use pathogen plugins
execute pathogen#infect()

" Some other settings
syntax on
filetype plugin indent on

" This makes Vim use main system clipboard. Vim needs to be compiled with clipboard support. Regular vim usually does not support it, but vim-gnome does
set clipboard=unnamedplus

" Enable autocomplete plugin
let g:neocomplete#enable_at_startup = 1

" Golang programming
autocmd FileType go map <buffer> <F5> <Esc>:w<CR>:GoRun<CR>
autocmd FileType go map <buffer> <F6> <Esc>:w<CR>:GoTest<CR>
