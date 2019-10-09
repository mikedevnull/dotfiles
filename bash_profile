# enable and set terminal colors
export CLICOLOR=1
export LSCOLROS=ExFxBxDxCxegedabagacad

if which brew > /dev/null; then
  if [ -f $(brew --prefix bash-git-prompt)/share/gitprompt.sh ]; then
    source $(brew --prefix bash-git-prompt)/share/gitprompt.sh
  fi

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
  fi
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi

if which direnv > /dev/null; then
  eval "$(direnv hook bash -)"
fi

if which thefuck > /dev/null; then
  eval "$(thefuck --alias)"
fi

if [ -f ~/.bash_local ]; then
  source ~/.bash_local
fi
