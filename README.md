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
		brew install git zsh zsh-completions tmux vim fasd
* Set correct premissions for ZSH
		sudo chmod -R 755 /usr/local/share/zsh
		sudo chown -R root:staff /usr/local/share/zsh
* Set ZSH as default shell
		chsh -s /bin/zsh
* Clone this repository to `~/.dotfiles`
		git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles
* Run install script
		chmod +x scripts/*
		./scripts/install.sh

### Debian & Ubuntu

* Install dependencies
		sudo add-apt-repository ppa:aacebedo/fasd
		sudo apt-get update
		sudo apt-get install git zsh tmux vim fasd
* Set ZSH as default shell
		chsh -s $(which zsh)
* Clone this repository to `~/.dotfiles`
		git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles
* Run install script
		chmod +x scripts/*
		./scripts/install.sh

[zsh]: http://www.zsh.org
[pure]: https://github.com/sindresorhus/pure
[git]: https://git-scm.com
[vim]: https://www.vim.org
[tmux]: https://github.com/tmux/tmux/wiki
[fasd]: https://github.com/clvv/fasd
[homebrew]: https://brew.sh
