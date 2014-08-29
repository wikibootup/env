export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source /usr/local/opt/autoenv/activate.sh
export PS1="\[\033[1m\]\[\033[m\]$ "
export CLICOLOR=1
export LSCOLORS=DxFxCxGxBxegedabagaced
eval "$(hub alias -s)"
export DOCKER_HOST=tcp://192.168.59.103:2375
