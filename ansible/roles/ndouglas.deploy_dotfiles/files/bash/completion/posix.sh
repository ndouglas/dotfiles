#!/usr/bin/env bash

# Import bash completion.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion 2> /dev/null;
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion 2> /dev/null;
  fi
fi
