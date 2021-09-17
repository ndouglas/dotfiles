#!/usr/bin/env bash

# Get all hosts' date last updated.
dot_get_date_last_updated_all() {
  authorized_key_path="${DOTFILES_ANSIBLE_PATH}"/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/;
  (
    dot_get_date_last_updated_all_file_handler() {
      authorized_key="${1}";
      user_at_hostname="$(basename "${authorized_key}" .pub)";
      user="$(echo "${user_at_hostname}" | cut -d@ -f1)";
      hostname="$(echo "${user_at_hostname}" | cut -d@ -f2)";
      prompt="$(bash -lc nd_preview_hostname_prompt "${hostname}" "${user}" '~')";
      echo -e "$(printf "%20s" "${prompt}"):\t$(ssh "${user_at_hostname}" 'cat ~/.dotfiles/.last_updated')";
    }
    export -f dot_get_date_last_updated_all_file_handler;
    parallel dot_get_date_last_updated_all_file_handler ::: "${authorized_key_path}"/*.pub;
  );
}
