#!/usr/bin/env bash

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on" 2> /dev/null;

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on" 2> /dev/null;

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on" 2> /dev/null;

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on" 2> /dev/null;

# Automatically insert intervening directories when typing `cd **/qux`.
shopt -s autocd 2>/dev/null;

# This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars 2> /dev/null;

# Examples:
# export dotfiles="$HOME/dotfiles"
# export projects="$HOME/projects"
# export documents="$HOME/Documents"
# export dropbox="$HOME/Dropbox"

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell 2> /dev/null;

# Combine multiline commands into one in history.
shopt -s cmdhist 2>/dev/null;

# Check window size to see if we need to resize.
shopt -s checkwinsize 2>/dev/null;

# Correct spelling errors during tab-completion
shopt -s dirspell 2> /dev/null;

# Enable recursive globbing.
shopt -s globstar 2>/dev/null;

# Append to the Bash history file, rather than overwriting it.
shopt -s histappend 2>/dev/null;

# Enable case-insensitive path globbing.
shopt -s nocaseglob 2>/dev/null;

# Fail pipes ASAP.
set -o pipefail;
