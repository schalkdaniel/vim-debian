all:
	make r
	make vim
	make tmux
	

r:
	sudo apt install -y dirmngr libcurl4-openssl-dev libssl-dev libxml2-dev software-properties-common apt-transport-https
	sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
	sudo add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian buster-cran35/'
	sudo apt update
	sudo apt install r-base
	ln -s -f ~/vim-debian/.dotfiles/.Renviron ~/
	ln -s -f ~/vim-debian/.dotfiles/.bash_aliases ~/
	source ~/.bashrc

vim:
	mkdir -p ~/.vim/autoload/
	wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mv plug.vim ~/.vim/autoload/
	ln -s -f ~/vim-debian/.vimrc ~/

tmux:
	sudo apt install tmux
	ln -s -f ~/vim-debian/.dotfiles/.tmux.conf ~/
