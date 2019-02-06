#!/usr/bin/env bash
# vim: ts=4 sw=4

# Abort on error
set -e

# cd to the folder of the script to ensure correct paths
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# Copy fonts to library on macOS
if [ "$(uname -s)" == "Darwin" ]; then
	echo "Copying fonts to libary"
	cp -R ../fonts/* ~/Library/Fonts/.
fi

# Backup old dotfiles
./backup.sh

# Remove old dotfiles
echo "Removing old dotfiles"
[ -f "../../.gitconfig" ] && rm ../../.gitconfig
[ -f "../../.zshenv" ] && rm ../../.zshenv
[ -f "../../.zshrc" ] && rm ../../.zshrc
[ -f "../../.vimrc" ] && rm ../../.vimrc
[ -d "../../.vim" ] && rm -r ../../.vim
[ -f "../../.tmux.conf" ] && rm ../../.tmux.conf

# Symlink new dotfiles
echo "Symlinking new dotfiles"
ln -sF ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sF ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -sF ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sF ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -sF ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

