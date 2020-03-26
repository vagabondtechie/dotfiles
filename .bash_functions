git_info() {
   git status 2> /dev/null | awk '
   BEGIN {
     modified=0; added=0; branch=""
   }
   /On branch/ { branch = $3; }
   /Changes to be committed/ { added=1 }
   /Changes not staged for commit/ { modified = 1 }
   END {
     if (added) printf "on \033[1;93m%s [+]", branch
     else if (modified) printf "on \033[1;91m%s [✘]", branch
     else if (branch != "") printf "on \033[1;92m%s [✔]", branch
     else printf ""
   }
   '
}
setps1() {
    if [ $1 == "G" ]
    then
        PS1=$PS1_WITH_GIT_INFO
    elif [ $1 == "E" ]
    then
        PS1=$PS1_IN_PLAIN_ENGLISH
    else
        PS1=$PS1_MINIMAL
    fi
}

