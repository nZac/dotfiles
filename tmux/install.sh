#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing teamocil"
  sudo gem install --no-ri --no-rdoc teamocil
fi
