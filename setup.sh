# Link the config files to HOME directory counterparts
ln -s $(pwd)/.bash_aliases $HOME/
ln -s $(pwd)/.bash_functions $HOME/
ln -s $(pwd)/.git_aliases $HOME/
ln -s $(pwd)/.vimrc $HOME/
[ -f ~/.path_vars ] || cp .path_vars ~/
[ -f ~/.env_vars ] || cp .env_vars ~/

# Copy note taking files
[ -f ~/todos.txt ] || cp todos.txt ~/
[ -f ~/quick_notes.txt ] || cp quick_notes.txt ~/
[ -f ~/bucket_list.txt ] || cp bucket_list.txt ~/

if [ "$1" == "mac" ]; then
    cat .bash_cfg_partial >> ~/.bash_profile
elif [ "$1" == "linux" ]; then
    cat .bash_cfg_partial >> ~/.bashrc
else
    echo "Which os is this?"
fi
