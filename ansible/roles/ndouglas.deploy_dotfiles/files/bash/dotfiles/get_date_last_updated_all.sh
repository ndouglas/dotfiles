#!/usr/bin/env bash

# Get all hosts' date last updated.
dot_get_date_last_updated_all() {
  for authorized_key in "${DOTFILES_ANSIBLE_PATH}"/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/*.pub; do
    host_at_hostname="$(basename "${authorized_key}" .pub)";
    echo "${host_at_hostname}: $(ssh "${host_at_hostname}" 'cat ~/.dotfiles/.last_updated')";
  done;
}
