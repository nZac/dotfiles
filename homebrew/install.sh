#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install \
	caskroom/cask/brew-cask \
	grc \
	coreutils \
       	spark \
	pyenv \
	tmux 

# Install homebrew cask packages
brew cask install \
	google-chrome \
	firefox \
	bettertouchtool \
	karabiner \
	alfred \
	flux \
	dropbox \
	google-drive \
	virtualbox \
	onepassword \
	iTerm2 \
	spotify 


exit 0
