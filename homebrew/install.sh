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
    vim \
    git \
    hg \
	grc \
    xz \
	coreutils \
    spark \
    python \
	pyenv \
    pyenv-virtualenvwrapper \
	tmux \
    heroku-toolbelt \
    postgresql \
    freetds \
    libjpeg \
    reattach-to-user-namespace --wrap-pbcopy-and-pbpaste

# Install homebrew cask packages
brew cask install \
	google-chrome \
	firefox \
    synology-assistant \
    cyberduck \
	bettertouchtool \
	karabiner \
	alfred \
    vagrant \
    caffeine \
	flux \
    pgadmin3 \
	dropbox \
	google-drive \
	virtualbox \
	onepassword \
    sourcetree \
	iTerm2 \
	spotify

exit 0
