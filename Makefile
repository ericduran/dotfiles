libs:
	apt install stow \
		tmux \
		fonts-powerline

deps:
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

stow:
	stow home
	stow tmux
	stow git
	stow alacritty

