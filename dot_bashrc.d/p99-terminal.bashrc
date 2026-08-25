# starship
if command -v starship &> /dev/null ; then 
  eval "$(starship init bash)"
fi
# direnv 
if command -v direnv &> /dev/null ; then
  eval "$(direnv hook bash)"
fi

# sdkman 
SDKMAN_DIR="$HOME/.sdkman"
if [ -f "$SDKMAN_DIR/bin/sdkman-init.sh" ]; then 
  source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

