#!/bin/sh

if test ! $(which virtualenvwrapper)
then
    echo "  Install virtualenvwrapper"
    pip install virtualenvwrapper
fi
