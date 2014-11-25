export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PYENV_ROOT/bin:$PATH"

export WORKON_HOME=$HOME/.virtualenvs

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

source /usr/local/bin/virtualenvwrapper.sh

eval "$(pyenv init -)"

pyenv virtualenvwrapper

