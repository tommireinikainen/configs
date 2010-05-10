#PS1='\u@\h:\w\$ '

parse_git_branch (){
   git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# (\1)#'
}
export PS1='\[\033[0;35m\]\h \[\033[0;33m\]\w\[\033[00m\]\[\033[01;00m\]$(parse_git_branch)$ '

alias sagi="sudo apt-get install"
alias emacs="emacs -nw"