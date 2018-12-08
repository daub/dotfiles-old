PACKAGES ?= \
	editorconfig \
	misc \
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
	@stow $(@D) \
		-d $(PACKAGES_DIR)/$* \
		-t $(DIST_DIR)

# Install

install: $(DIST_DIR)
	@stow -R $<

# Uninstall

uninstall: $(DOTFILES)
	@stow -D $^
