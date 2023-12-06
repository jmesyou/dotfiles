# starship
if command -v starship ; then 
  eval "$(starship init bash)"
fi
# direnv 
if command -v direnv ; then
  eval "$(direnv hook bash)"
fi

# sdkman 
SDKMAN_DIR="$HOME/.sdkman"
if [ ! -f "$SDKMAN_DIR/bin/sdkman-init.sh" ]; then 
  source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi

