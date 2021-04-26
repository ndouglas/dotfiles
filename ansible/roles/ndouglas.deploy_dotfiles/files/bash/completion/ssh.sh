#!/usr/bin/env bash

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "${HOME}/.ssh/config.d" ] && complete -o "default" -o "nospace" -W "$(grep -r "^\s*Host\s" "${HOME}/.ssh/config.d" | grep -v "[?*]" | grep -oE '([A-Za-z0-9])+$')" scp sftp ssh;
