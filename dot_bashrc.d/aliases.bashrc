
alias_if_exists() {
    if type $2 &> /dev/null ; then 
    	alias $1=$2
    fi 
} 

alias_if_exists vi nvim 
alias_if_exists ls exa 

alias please=sudo

