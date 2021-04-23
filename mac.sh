#!/bin/bash

# Install brew package manager for Mac
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install vim-plug for installing vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Some bash and git completion
brew install wget
brew install bash-completion
wget -O ~/.git_completion.bash https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.profile
echo ". ~/.git_completion.bash" >> ~/.profile
