#/bin/bash

# Development software
sudo apt-get install python3-pip git openssh-server openssh-client exuberant-ctags

# Archives and restricted extras
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip gdebi

# Install vim-plug for installing vim plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install xclip and make it equivalent to pbcopy/pbpaste
sudo apt-get install -y xclip
echo "alias pbcopy='xclip -selection clipboard'" >> ~/.aliases
echo "alias pbpaste='xclip -selection clipboard -o'" >> ~/.aliases

# Some bash and git completion
sudo apt-get install bash-completion
echo "source /etc/profile.d/bash_completion.sh" >> ~/.profile
wget -O ~/.git_completion.bash https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
echo ". ~/.git-completion.bash" >> ~/.profile
