#/bin/bash

# Development software
sudo apt-get install python3-pip git openssh-server openssh-client exuberant-ctags

# Archives and restricted extras
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip gdebi

# Install starship bash prompt
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init bash)"' >> ~/.profile

# Install vim-plug for installing vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install xclip and make it equivalent to pbcopy/pbpaste
sudo apt-get install -y xclip
echo "alias pbcopy='xclip -selection clipboard'" >> ~/.aliases
echo "alias pbpaste='xclip -selection clipboard -o'" >> ~/.aliases
