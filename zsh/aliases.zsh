# vim: ts=4 sw=4

GREP_OPTS='--color=auto --exclude-dir={.git,.hg,.svn,node_modules}'
alias grep="grep $GREP_OPTS"
alias egrep="egrep $GREP_OPTS"
alias fgrep="fgrep $GREP_OPTS"
unset GREP_OPTS

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ~='cd ~'

alias l='ls -l'
alias ll='ls -al'

# Quick open files with vim using fasd
alias v='f -e vim'

