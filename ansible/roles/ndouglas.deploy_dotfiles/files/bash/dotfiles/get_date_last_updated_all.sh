#!/usr/bin/env bash

# Get all hosts' date last updated.
dot_get_date_last_updated_all() {
  authorized_key_path="${DOTFILES_ANSIBLE_PATH}"/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/;
  (
    dot_get_date_last_updated_all_file_handler() {
      authorized_key="${1}";
      user_at_hostname="$(basename "${authorized_key}" .pub)";
      user="$(echo "${user_at_hostname}" | cut -d\@ -f1)";
      hostname="$(echo "${user_at_hostname}" | cut -d\@ -f2)";
      prompt="$(bash -lc "nd_preview_hostname_prompt ${hostname} ${user} ~")";
      padded_prompt="$(bash -lc "nd_pad_string 40 \"${prompt}\"")";
      response="$(ssh "${user_at_hostname}" -o ConnectTimeout=10 'cat ~/.dotfiles/.last_updated')";
      echo -e "${padded_prompt}:\t${response}";
    }
    export -f dot_get_date_last_updated_all_file_handler;
    parallel --jobs 20 dot_get_date_last_updated_all_file_handler ::: "${authorized_key_path}"/*.pub;
  );
}
