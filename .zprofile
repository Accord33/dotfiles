if [ "$(uname -m)" = "arm64" ]; then
  echo -e "\033]1337;SetProfile=ARM\a"
else
  echo -e "\033]1337;SetProfile=Intel\a"
fi

