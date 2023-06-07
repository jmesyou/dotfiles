# starship
if exists starship ; then 
  eval "$(starship init bash)"
fi 

if exists vi ; then 
  export EDITOR="vi"
fi
