.PHONY: all
all: dotfiles ## Installs the bin and etc directory files and the dotfiles

.PHONY: dotfiles
dotfiles: ## Installs the dotfiles.
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name "rm-old-snaps.sh" -not -name "dpkg-filters"); do \
		f=$$(basename $$file); \
		echo $$file; \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -fn $(CURDIR)/gitignore $(HOME)/.gitignore;
	git update-index --skip-worktree $(CURDIR)/.gitconfig;
	ln -snf $(CURDIR)/.bash_profile $(HOME)/.profile;
	if [ ! -d $(HOME)/Pictures ]; then \
		mkdir -p $(HOME)/Pictures; \
	fi;
	ln -snf $(CURDIR)/desktop.png $(HOME)/Pictures/desktop.png;
