#!/usr/bin/env bash

# Homebrew completion.
if [ -x "$(command -v brew)" ]; then
  brew_prefix="$(brew --prefix)";
  if [ -f "${brew_prefix}"/etc/bash_completion.d/brew ]; then
    . "${brew_prefix}"/etc/bash_completion.d/brew;
  elif [ -f "${brew_prefix}"/Library/Contributions/brew_bash_completion.sh ]; then
    . "${brew_prefix}"/Library/Contributions/brew_bash_completion.sh;
  elif [ -f "${brew_prefix}"/completions/bash/brew ]; then
    # For the git-clone based installation, see here for more info:
    # https://github.com/Bash-it/bash-it/issues/1458
    # https://docs.brew.sh/Shell-Completion
    . "${brew_prefix}"/completions/bash/brew;
  fi
fi
