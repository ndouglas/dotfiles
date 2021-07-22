#!/usr/bin/env bash

# Get the date the host was last updated.
dot_get_date_last_checked() {
  host="${1}";
  if [ -z "${host}" ]; then
    cat "${DOTFILES_ANSIBLE_PATH}"/../.last_checked;
  else
    ssh "${host}" 'cat ~/.dotfiles/.last_checked';
  fi
}
