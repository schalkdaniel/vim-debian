vim:
	mkdir -p ~/.vim/autoload/
	wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mv plug.vim ~/.vim/autoload/
	ln -s -f ~/datashield/vim/.vimrc ~/
