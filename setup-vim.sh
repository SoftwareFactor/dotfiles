# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Plugin for Golang development (also needs to be enabled in .vimrc)
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

# Plugin for autocomplete (also needs to be enabled in .vimrc)
git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim
