#!/usr/bin/env bash

# Set our default editor, if it's available.
if [ -x "$(command -v nano)" ]; then
  export EDITOR='nano';
fi;

# Set our git editor depending on what's installed.
if [ -x "$(command -v subl)" ]; then
  export GIT_EDITOR='subl -n -w';
elif [ -x "$(command -v nano)" ]; then
  export GIT_EDITOR='nano';
fi
