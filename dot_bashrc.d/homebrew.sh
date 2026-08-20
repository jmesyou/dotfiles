HOMEBREW=/home/linuxbrew/.linuxbrew/bin/brew 

if [[ -f $HOMEBREW && -x $HOMEBREW ]]; then 
  eval $($HOMEBREW shellenv)
else 
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
