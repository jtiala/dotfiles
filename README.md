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

- Install dependencies

      brew install coreutils git tmux vim zsh
      brew tap homebrew/cask-fonts
      brew install --cask font-victor-mono

- Set ZSH as default shell

      chsh -s /bin/zsh

- Clone this repository to `~/.dotfiles`

      git clone --recursive git@github.com:jtiala/dotfiles.git ~/.dotfiles

- Run install script

      ~/.dotfiles/scripts/install.sh

- Set up Node with nvm

      brew install nvm
      nvm install --lts
      node -v

- Set up latest Java with jenv

      brew install jenv openjdk
      jenv add /opt/homebrew/Cellar/openjdk/[INSTALLED VERSION]
      ln -s ~/.jenv/versions/[INSTALLED MAJOR VERSION].0 ~/.jenv/versions/[INSTALLED MAJOR VERSION]
      jenv global [INSTALLED MAJOR VERSION]
      java -version

- Set up older Java with jenv

      brew install jenv openjdk@11
      jenv add /opt/homebrew/Cellar/openjdk@11/[INSTALLED VERSION]
      ln -s ~/.jenv/versions/11.0 ~/.jenv/versions/11

- Set up Python with pyenv

      brew install pyenv pyenv-virtualenv
      pyenv install -l
      pyenv install [LATEST 3.x.x]
      pyenv install [LATEST 2.x.x]
      pyenv global [INSTALLED 3.x.x]
      pyenv global [INSTALLED 2.x.x]
      python --version
      python3 --version
      python2 --version

- Set up Ruby with rbenv

      brew install rbenv ruby-build
      rbenv install -l
      rbenv install [LATEST VERSION]
      rbenv global [INSTALLED VERSION]
      ruby -v

### Debian & Ubuntu

- Install dependencies

      sudo apt-get install software-properties-common dirmngr
      sudo apt-get update
      sudo apt-get install git tmux vim zsh

- Set ZSH as default shell

      chsh -s $(which zsh)

- Clone this repository to `~/.dotfiles`

      git clone --recursive https://github.com/jtiala/dotfiles.git ~/.dotfiles

- Run install script

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
