#!/usr/bin/env bash
# vim: ts=4 sw=4

echo "Running install.sh"

# Abort on error
set -e

# cd to the folder of the script to ensure correct paths
parent_path=$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd -P
)
cd "$parent_path"

# Don't show macOS last login message
touch ~/.hushlogin

# Pull and init submodules
echo "Pulling and initing submodules"
git submodule update --init --recursive

# Backup old dotfiles
./backup.sh

# Remove old dotfiles
echo "Removing old dotfiles"
[ -f "../../.gitconfig" ] && rm ../../.gitconfig
[ -d "../../.zprezto" ] && rm -r ../../.zprezto
[ -f "../../.zlogin" ] && rm ../../.zlogin
[ -f "../../.zlogout" ] && rm ../../.zlogout
[ -f "../../.zpreztorc" ] && rm ../../.zpreztorc
[ -f "../../.zprofile" ] && rm ../../.zprofile
[ -f "../../.zshenv" ] && rm ../../.zshenv
[ -f "../../.zshrc" ] && rm ../../.zshrc
[ -f "../../.vimrc" ] && rm ../../.vimrc
[ -d "../../.vim" ] && rm -r ../../.vim
[ -f "../../.tmux.conf" ] && rm ../../.tmux.conf

# Symlink new dotfiles
echo "Symlinking new dotfiles"
ln -sF ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -sF ~/.dotfiles/zsh/prezto ~/.zprezto
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zlogin ~/.zlogin
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zlogout ~/.zlogout
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zpreztorc ~/.zpreztorc
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zprofile ~/.zprofile
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zshenv ~/.zshenv
ln -sF ~/.dotfiles/zsh/prezto/runcoms/zshrc ~/.zshrc
ln -sF ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -sF ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

echo "install.sh finished"
