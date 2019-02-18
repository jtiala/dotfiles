# ⚙️ My dotfiles

## Includes dotfiles for

* [ZSH][zsh] with [Pure][pure] prompt
* [Git][git]
* [Vim][vim]
* [tmux][tmux]
* [fasd][fasd]

## Installation

### macOS

* Install [Homebrew][homebrew]

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

* Install dependencies

		brew tap homebrew/cask-fonts
		brew tap d12frosted/emacs-plus
		brew cask install font-fira-code font-source-code-pro
		brew install git zsh zsh-completions tmux fasd vim emacs-plus
		ln -s /usr/local/Cellar/emacs-plus/*/Emacs.app/ /Applications/

* Set correct premissions for ZSH

		chmod go-w '/usr/local/share'
		sudo chmod -R 755 /usr/local/share/zsh /usr/local/share/zsh-completions /usr/local/Cellar/zsh /usr/local/Cellar/zsh-completions /usr/local/Homebrew/completions /usr/local/Homebrew/Library/Taps/homebrew/homebrew-services/completions
		sudo chown -R root:staff /usr/local/share/zsh /usr/local/share/zsh-completions /usr/local/Cellar/zsh /usr/local/Cellar/zsh-completions /usr/local/Homebrew/completions /usr/local/Homebrew/Library/Taps/homebrew/homebrew-services/completions

* Set ZSH as default shell

		chsh -s /bin/zsh

* Clone this repository to `~/.dotfiles`

		git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles

* Run install script

		chmod +x ~/.dotfiles/scripts/*
		~/.dotfiles/scripts/install.sh

### Debian & Ubuntu

* Install dependencies

		sudo add-apt-repository ppa:aacebedo/fasd
		sudo apt-get update
		sudo apt-get install git zsh tmux fasd vim emacs

* Set ZSH as default shell

		chsh -s $(which zsh)

* Clone this repository to `~/.dotfiles`

		git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles

* Run install script

		chmod +x ~/.dotfiles/scripts/*
		~/.dotfiles/scripts/install.sh

## Make it your own!

Feel free to fork this repo and base your dotfiles on my setup. Be sure to change yout git name and email at `git/.gitconfig`.

[zsh]: http://www.zsh.org
[pure]: https://github.com/sindresorhus/pure
[git]: https://git-scm.com
[vim]: https://www.vim.org
[tmux]: https://github.com/tmux/tmux/wiki
[fasd]: https://github.com/clvv/fasd
[homebrew]: https://brew.sh
