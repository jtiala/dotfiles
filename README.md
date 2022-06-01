# ⚙️ My dotfiles

## Includes dotfiles for

- [Git][git]
- [hyper][hyper]
- [tmux][tmux]
- [Vim][vim]
- [ZSH][zsh] with [Prezto][prezto] configuration framework

## Installation

### macOS

- Install [Homebrew][homebrew]

      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

- Install dependencies

      brew tap homebrew/cask-fonts
      brew install --cask font-victor-mono font-fira-code
      brew install coreutils git zsh zsh-completions tmux fasd vim

- Set ZSH as default shell

      chsh -s /bin/zsh

- Clone this repository to `~/.dotfiles`

      git clone --recursive git@github.com:jtiala/dotfiles.git ~/.dotfiles

- Run install script

      chmod +x ~/.dotfiles/scripts/*
      ~/.dotfiles/scripts/install.sh

### Debian & Ubuntu

- Install dependencies

      sudo apt-get install software-properties-common dirmngr
      sudo add-apt-repository ppa:aacebedo/fasd
      sudo apt-get update
      sudo apt-get install git zsh tmux fasd vim

- Set ZSH as default shell

      chsh -s $(which zsh)

- Clone this repository to `~/.dotfiles`

      git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles

- Run install script

      chmod +x ~/.dotfiles/scripts/*
      ~/.dotfiles/scripts/install.sh

## Make it your own!

Feel free to fork this repo and base your dotfiles on my setup. Be sure to change your git name and email at `git/.gitconfig`.

[git]: https://git-scm.com
[hyper]: https://hyper.is
[tmux]: https://github.com/tmux/tmux/wiki
[vim]: https://www.vim.org
[zsh]: http://www.zsh.org
[prezto]: https://github.com/sorin-ionescu/prezto
[homebrew]: https://brew.sh
