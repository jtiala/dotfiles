# vim: ts=4 sw=4

# Use emacs style bindings
bindkey -e

# Make delete work
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

# Move between words with alt+arrows
bindkey "[D" backward-word
bindkey "[C" forward-word

