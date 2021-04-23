[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions
[ -f ~/.aliases_git ] && source ~/.aliases_git
[ -f ~/.env_vars ] && source ~/.env_vars
[ -f ~/.path_vars ] && source ~/.path_vars

# Setup editor
export EDITOR=vim

# Shell options related to accessiblity and history
HISTFILESIZE=100000
HISTSIZE=100000
PROMPT_COMMAND='history -a'
HISTCONTROL=ignorespace:erasedups

shopt -s histappend
shopt -s cmdhist
shopt -s cdspell

export PS1="[\[\e[35m\] \w \[\e[m\]]\[\e[36m\]\`git_info\`\[\e[m\]$ "
