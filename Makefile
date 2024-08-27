
# Do everything.
all: link brew

# Link dotfiles.
link:
	@echo "\033[0;34mRun init/init_link\033[0m"
	init/init_link.sh
	@echo "\033[0;32mDone.\033[0m"

# Set macOS system preferences.
brew:
	@echo "\033[0;34mRun init/brew.sh\033[0m"
	init/brew.sh
	@echo "\033[0;32mDone.\033[0m"

.PHONY: backup
backup:
	unlink ~/.Brewfile
	brew bundle dump --global
	rm .Brewfile
	mv ~/.Brewfile .Brewfile
	make
