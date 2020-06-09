all:
	make r
	make vim
	

r:
	sudo apt install dirmngr --install-recommends
	sudo apt install software-properties-common
	sudo apt install apt-transport-https
	sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
	sudo add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian buster-cran35/'
	sudo apt update
	sudo apt install r-base
	ln -s -f ~/vim-debian/.dotfiles/.Renviron ~/

vim:
	mkdir -p ~/.vim/autoload/
	wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mv plug.vim ~/.vim/autoload/
	ln -s -f ~/vim-debian/.vimrc ~/

