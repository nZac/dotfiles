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
brew install                \
	caskroom/cask/brew-cask \
    libsass                 \
    dnsmasq                 \
    ctags                   \
    vim                     \
    git                     \
    hg                      \
	grc                     \
    xz                      \
	coreutils               \
    spark                   \
    python                  \
    rust                    \
	pyenv                   \
    pyenv-virtualenvwrapper \
	tmux                    \
    node                    \
    heroku-toolbelt         \
    postgresql              \
    freetds                 \
    libjpeg                 \
    reattach-to-user-namespace --wrap-pbcopy-and-pbpaste

# Install homebrew cask packages
brew cask install      \
	google-chrome      \
	firefox            \
    synology-assistant \
    cyberduck          \
	bettertouchtool    \
	karabiner          \
    nvalt              \
	alfred             \
    vagrant            \
    screenhero         \
    ynab               \
    caffeine           \
	flux               \
    pgadmin3           \
	dropbox            \
	google-drive       \
	virtualbox         \
    quassel-client     \
	onepassword        \
    sourcetree         \
	iterm2             \
    vlc                \
	spotify

brew install tunnelblick --appdir=~/Applications

exit 0
