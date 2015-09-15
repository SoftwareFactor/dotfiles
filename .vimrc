" Use pathogen plugins
execute pathogen#infect()

" Some other settings
syntax on
filetype plugin indent on

" This makes Vim use main system clipboard. Vim needs to be compiled with clipboard support. Regular vim usually does not support it, but vim-gnome does
set clipboard=unnamedplus

" Enable autocomplete plugin
let g:neocomplete#enable_at_startup = 1
