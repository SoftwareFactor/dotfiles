# Backup current .vim dir
BACKUPDIR=./old/$(date +"%Y-%m-%d_%H-%M")
mkdir -p ./$BACKUPDIR/.vim
mv ~/.vim/* ./$BACKUPDIR/.vim/
# Install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Plugin for Golang development (also needs to be enabled in .vimrc)
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

# Plugin for autocomplete (also needs to be enabled in .vimrc)
git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete.vim

# Plugin for fuzzy file search
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
