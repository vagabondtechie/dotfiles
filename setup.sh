#!/bin/bash
# Link the config files to HOME directory counterparts
ln -s $(pwd)/.bash_aliases $HOME/
ln -s $(pwd)/.bash_functions $HOME/
ln -s $(pwd)/.git_aliases $HOME/
ln -s $(pwd)/.vimrc $HOME/
[ -f ~/.path_vars ] || cp .path_vars ~/
[ -f ~/.env_vars ] || cp .env_vars ~/

mv ~/.bash_profile ~/.bash_profile.bkp
mv ~/.bashrc ~/.bashrc.bkp
cat .bash_cfg_partial >> ~/.profile

if [ "$1" == "mac" ]; then
    bash mac.sh
elif [ "$1" == "linux" ]; then
    bash linux.sh
else
    echo "Which os is this?"
fi
