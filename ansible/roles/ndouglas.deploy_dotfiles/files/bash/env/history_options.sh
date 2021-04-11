#!/usr/bin/env bash

# Avoid duplicate entries
export HISTCONTROL="erasedups:ignoreboth";

# Let's keep a long history in memory.
export HISTSIZE=100000;

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear";

# Keep a long history on disk.
export HISTFILESIZE="${HISTSIZE}";

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T ';
