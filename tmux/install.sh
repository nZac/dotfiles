#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing tmuxinator"
  sudo gem install --no-ri --no-rdoc tmuxinator
fi
