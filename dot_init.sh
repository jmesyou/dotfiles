#!/bin/sh 
export EDITOR=vi

# utilities 
exists() {
  if command -v $1 &> /dev/null ; then 
    return 0
  else 
    return 1
  fi
}

alias_if_exists() {
  if exists $1 ; then 
    alias $2=$1
  fi 
} 

alias_if_exists nvim vi  
alias_if_exists exa  ls
alias_if_exists eza  ls 

alias please=sudo

# download starship prompt 
if ! exists starship ; then
  mkdir -p "$HOME/.local/bin"	
  curl -sS https://starship.rs/install.sh | sh -s -- -y --bin-dir "$HOME/.local/bin"
fi

# python
if ! exists pip3 ; then
  python3 -m ensurepip --upgrade
fi

if ! exists pipx ; then
  pip3 install --user pipx
  pipx ensurepath
fi

# go
if exists go ; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$GOPATH/bin
fi 

# kitty
if [[ -n "${KITTY_WINDOW_ID}" ]] ; then 
  alias ssh="kitty +kitten ssh"
fi

