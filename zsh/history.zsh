# vim: ts=4 sw=4

if [ -z $HISTFILE ]; then
	HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=30000
SAVEHIST=25000
HISTCONTROL=ignoredups

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history

