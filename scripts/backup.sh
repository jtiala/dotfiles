#!/usr/bin/env bash
# vim: ts=4 sw=4

echo "Running backup.sh"

# Abort on error
set -e

# cd to the folder of the script to ensure correct paths
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# Remove old backups
echo "Removing old backups"
rm -rf ../.bak

# Backup old dotfiles
echo "Backing up old dotfiles"
mkdir ../.bak
[ -f "../../.gitconfig" ] && cp ../../.gitconfig ../.bak/.gitconfig.bak
[ -f "../../.zshenv" ] && cp ../../.zshenv ../.bak/.zshenv.bak
[ -f "../../.zshrc" ] && cp ../../.zshrc ../.bak/.zshrc.bak
[ -f "../../.vimrc" ] && cp ../../.vimrc ../.bak/.vimrc.bak
[ -d "../../.vim" ] && cp -R ../../.vim/ ../.bak/.vim.bak
[ -f "../../.tmux.conf" ] && cp ../../.tmux.conf ../.bak/.tmux.conf.bak
[ -d "../../.emacs.d" ] && cp -R ../../.emacs.d/ ../.bak/.emacs.d.bak
[ -f "../../.emacs" ] && cp  ../../.emacs ../.bak/.emacs.bak
[ -f "../../.spacemacs" ] && cp  ../../.spacemacs ../.bak/.spacemacs.bak

echo "backup.sh finished"

