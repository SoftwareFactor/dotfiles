"change status label
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

"automatically load plugins using Pathogen Vim plugin manager
execute pathogen#infect()
syntax on
filetype plugin indent on

"set default buffer to tmux buffer
set clipboard=unnamed
