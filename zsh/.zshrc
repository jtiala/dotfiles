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

# Init fasd if available
if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi
