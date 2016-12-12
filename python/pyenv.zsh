if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
pyenv virtualenvwrapper

export PYENV_ROOT="$HOME/.pyenv"

export WORKON_HOME=$HOME/.virtualenvs

export VIRTUALENVWRAPPER_WORKON_CD=0

