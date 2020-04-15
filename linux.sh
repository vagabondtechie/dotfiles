#/bin/bash

# Development software
sudo apt-get install python3-pip python-pip virtualenv git openssh-server openssh-client g++ gcc ctags
# Archives and restricted extras
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip gdebi

# General purpose software
sudo apt-get install libreoffice vlc firefox

# Install starship bash prompt
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc

