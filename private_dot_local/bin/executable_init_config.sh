#!/bin/sh 
# (sh) independent configuration 

# utilities 
exists() {
  if type $1 &> /dev/null ; then 
    return 0
  else 
    return 1
  fi
}

alias_if_exists() {
    if exists $2 ; then 
    	alias $1=$2
    fi 
} 

# aliases 
alias_if_exists vi nvim 
alias_if_exists ls exa 
alias please=sudo

# download starship prompt 
if ! exists starship ; then 
  curl -sS https://starship.rs/install.sh | sh -s -- -y --bin-dir "$HOME/.local/bin"
fi

