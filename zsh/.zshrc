# vim: ts=4 sw=4

# Uncomment to enable profiler
# zmodload zsh/zprof

zsh_path=~/.dotfiles/zsh
fpath=( $zsh_path $fpath )

# Init Pure prompt
autoload -U promptinit && promptinit
prompt pure

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export EDITOR=vim
export CLICOLOR=1

source $zsh_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $zsh_path/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $zsh_path/history.zsh
source $zsh_path/completion.zsh
source $zsh_path/keys.zsh
source $zsh_path/aliases.zsh

export PATH=$HOME/bin:$PATH

# fasd
if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# avn
if [ -d "$HOME/.avn/bin" ]; then
  [ -s "$HOME/.avn/bin/avn.sh" ] && source "$HOME/.avn/bin/avn.sh" 
fi

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  export PATH=$HOME/.rbenv/bin:$PATH

  if command -v rbenv 1>/dev/null 2>&1; then
    eval "$(rbenv init -)"
  fi
fi

# pyenv
if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"

  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi
fi

# pyenv-virtualenv
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then
  eval "$(pyenv virtualenv-init -)"
fi

# jenv
if [ -d "$HOME/.jenv" ]; then
  export PATH="$HOME/.jenv/bin:$PATH"
  
  if command -v jenv 1>/dev/null 2>&1; then
    eval "$(jenv init -)"
  fi
fi

# Uncomment to enable profiler
# zprof

