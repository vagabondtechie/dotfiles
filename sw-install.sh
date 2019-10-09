# Development software
sudo apt-get install python3-pip python-pip virtualenv git openssh-server openssh-client g++ gcc

# Archives and restricted extras
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip gdebi

# General purpose software
sudo apt-get install libreoffice vlc firefox

cp .bash_aliases ~/
cp .git_aliases ~/
cp .vimrc ~/
echo -e '\nsource ~/.bash_aliases' >> ~/.bashrc
echo -e '\nsource ~/.git_aliases' >> ~/.bashrc
