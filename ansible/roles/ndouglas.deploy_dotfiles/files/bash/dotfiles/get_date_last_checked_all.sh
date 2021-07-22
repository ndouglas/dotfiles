#!/usr/bin/env bash

# Get all hosts' date last updated.
dot_get_date_last_checked_all() {
  authorized_key_path="${DOTFILES_ANSIBLE_PATH}"/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/;
  (
    dot_get_date_last_checked_all_file_handler() {
      authorized_key="${1}";
      host_at_hostname="$(basename "${authorized_key}" .pub)";
      echo -e "$(printf "%20s" "${host_at_hostname}"):\t$(ssh "${host_at_hostname}" 'cat ~/.dotfiles/.last_checked')";
    }
    export -f dot_get_date_last_checked_all_file_handler;
    parallel dot_get_date_last_checked_all_file_handler ::: "${authorized_key_path}"/*.pub;
  );
}
