#!/usr/bin/env bash

# Get the date the host was last updated.
dot_get_date_last_updated() {
  host="${1}";
  if [ -z "${host}" ]; then
    cat "${DOTFILES_ANSIBLE_PATH}"/../.last_updated;
  else
    ssh "${host}" 'cat ~/.dotfiles/.last_updated';
  fi
}
