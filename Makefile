DOTFILES ?= \
	system \
	misc \
	assets \
	i3 \
	polybar \
	dunst \
	rofi \
	nitrogen \
	termite \
	tmux \
	zsh \
	vim \
	git \
	zathura \
	vimb \
	surfraw \
	mpd \
	mpc \
	ncmpcpp \
	beets \
	mpv \
	streamlink \
	youtube-dl \
	aria2 \
	ledger \
	highlight \
	ranger \
	npm \
	pass \
	gnupg

# Install

install: $(DOTFILES:%=install-%)

install-vim:
	stow -R vim
	@vim +PlugInstall +qall

install-zsh:
	stow -R zsh

install-tmux:
	stow -R tmux

install-%: %
	stow -R $^

# Uninstall

uninstall: $(DOTS)
	@stow -D $^
