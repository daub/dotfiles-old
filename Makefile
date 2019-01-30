PACKAGES ?= \
	aria2 \
	assets \
	beets \
	buku \
	compton \
	dunst \
	editorconfig \
	fff \
	fzf \
	git \
	gnupg \
	highlight \
	i3 \
	ledger \
	misc \
	misc \
	mpc \
	mpd \
	mpv \
	ncmpcpp \
	npm \
	openbox \
	pass \
	polybar \
	ranger \
	rofi \
	ssh \
	streamlink \
	surfraw \
	system \
	termite \
	tmux \
	vim \
	vimb \
	weechat \
	youtube-dl \
	zathura \
	zsh

PACKAGES_DIR ?= packages
DIST_DIR ?= dist

build: $(DIST_DIR) $(PACKAGES:%=config/%)
	@echo $(+F)

$(DIST_DIR):
	@mkdir $(DIST_DIR) -p
	@mkdir $(DIST_DIR)/.config -p
	@mkdir $(DIST_DIR)/.local/share/applications -p
	@mkdir $(DIST_DIR)/.local/share/icons -p
	@mkdir $(DIST_DIR)/.aliases -p
	@mkdir $(DIST_DIR)/.scripts -p

config/%: $(PACKAGES_DIR)/%
	@stow $(@F) \
		-d $(PACKAGES_DIR) \
		-t $(DIST_DIR)

# Install

install: $(DIST_DIR)
	@stow -R $<

# Uninstall

uninstall: $(DOTFILES)
	@stow -D $^
