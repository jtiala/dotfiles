# vim: ts=4 sw=4

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
if [ -d "/usr/local/opt/nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
fi

# avn
if [ -d "$HOME/.avn/bin" ]; then
  [ -s "$HOME/.avn/bin/avn.sh" ] && source "$HOME/.avn/bin/avn.sh" 
fi

# rbenv
if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
  export PATH=$HOME/.rbenv/bin:$PATH
fi

# python
if [ -d "/usr/local/opt/python/libexec" ]; then
  export PATH=/usr/local/opt/python/libexec/bin:$PATH

  if [ -d "$HOME/Library/Python/3.7" ]; then
    export PATH=/Users/joonas.tiala/Library/Python/3.7/bin:$PATH
  fi
fi

