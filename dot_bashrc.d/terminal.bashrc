# starship
if exists starship ; then 
  eval "$(starship init bash)"
fi
# direnv 
if exists direnv ; then
  eval "$(direnv hook bash)"
fi

# sdkman 
if [ ! -f "$HOME/sdkman/bin/sdkman-init.sh" ]; then 
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

