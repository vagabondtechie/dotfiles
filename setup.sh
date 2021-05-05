#!/bin/bash
# Link the config files to HOME directory counterparts
ln -s $(pwd)/.aliases $HOME/
ln -s $(pwd)/.functions $HOME/
ln -s $(pwd)/.aliases_git $HOME/
ln -s $(pwd)/.vimrc $HOME/
ln -s $(pwd)/.tmux.conf $HOME/
[ -f ~/.path_vars ] || cp .path_vars ~/
[ -f ~/.env_vars ] || cp .env_vars ~/

[ -f ~/.bash_profile ] && mv ~/.bash_profile ~/.bash_profile.bkp
[ -f ~/.bashrc ] &&  mv ~/.bashrc ~/.bashrc.bkp
cat .profile >> ~/.profile

if [ "$1" == "mac" ]; then
    bash mac.sh
elif [ "$1" == "linux" ]; then
    bash linux.sh
else
    echo "Which os is this?"
fi
