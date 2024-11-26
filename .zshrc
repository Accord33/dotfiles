if [ "$(uname -m)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/bin:$PATH"
  # pyenv path
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  export HOMEBREW_NO_INSTALL_CLEANUP=FALSE

  alias python="python3"

  #flutterSDK
  export PATH=$HOME/prg/flutter/flutter/bin:$PATH
else

  eval "$(/usr/local/bin/brew shellenv)"
  export HOMEBREW_NO_INSTALL_CLEANUP=FALSE
fi



export PATH="$PATH:/Users/sakabekazuto/.modular/bin"
