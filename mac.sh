#!/bin/bash

# Install brew package manager for Mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install starship bash prompt
brew install starship
echo 'eval "$(starship init bash)"' >> ~/.bash_profile

# Install ctags
brew install ctags
