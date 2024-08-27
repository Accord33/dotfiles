if [ "$(uname -m)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/bin:$PATH"
  # pyenv path
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  export HOMEBREW_NO_INSTALL_CLEANUP=FALSE

  MOJO_PATH=$(modular config mojo.path) \
    && BASHRC=$( [ -f "$HOME/.bash_profile" ] && echo "$HOME/.bash_profile" || echo "$HOME/.bashrc" ) \
    && echo 'export MODULAR_HOME="'$HOME'/.modular"' >> "$BASHRC" \
    && echo 'export PATH="'$MOJO_PATH'/bin:$PATH"' >> "$BASHRC" \
    && source "$BASHRC"

  alias python="python3"

else

  eval "$(/usr/local/bin/brew shellenv)"
  export HOMEBREW_NO_INSTALL_CLEANUP=FALSE
fi



