# starship
if exists starship ; then 
  eval "$(starship init bash)"
fi 

# direnv 
if exists direnv ; then 
  eval "$(direnv hook bash)"
fi 

if exists vi ; then 
  export EDITOR="vi"
fi
