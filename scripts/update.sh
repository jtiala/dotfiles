#!/usr/bin/env bash
# vim: ts=4 sw=4

echo "Running update.sh"

# cd to the folder of the script to ensure correct paths
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

# Exit if git repository is dirty
if ! (output=$(git status --porcelain) && [ -z "$output" ]); then
	echo "Git repository is dirty! Commit your changes before running this update script"
	exit 1;
fi

# Update & upgrade homebrew formulae & packages
if [ "$(uname -s)" == "Darwin" ]; then
	echo "Updating Homebrew formulae"
	brew update
	echo "Upgrading Homebrew packages"
	brew upgrade
fi

# Pull latest changes from origin
echo "Pulling from origin"
git pull

# Update submodules
echo "Updating submodules"
git submodule update --recursive --remote

# Commit changes if any
if output=$(git status --porcelain) && [ -z "$output" ]; then
	echo "Commiting changes"
	git add .
	git commit -m 'Updated submodules'
	echo "Pushing to origin"
	git push origin master
fi

echo "update.sh finished"

