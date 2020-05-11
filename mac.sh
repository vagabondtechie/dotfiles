#!/bin/bash

# Install brew package manager for Mac
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install starship bash prompt
brew install starship
echo 'eval "$(starship init bash)"' >> ~/.bash_profile

# Install ctags
brew install ctags

# Install vim-plug for installing vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
