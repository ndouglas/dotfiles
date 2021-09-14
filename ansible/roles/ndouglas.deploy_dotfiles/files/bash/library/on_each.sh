#!/usr/bin/env bash

# Run a command on each valid host.
nd_on_each() {
  command="${@}";
  export command;
  authorized_key_path="${DOTFILES_ANSIBLE_PATH}/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/";
  (
    nd_on_each_file_handler() {
      authorized_key="${1}";
      host_at_hostname="$(basename "${authorized_key}" .pub)";
      echo -e "$(printf "%20s" "${host_at_hostname}"):\t$(ssh "${host_at_hostname}" bash -l <<EOF
${command}
EOF
      )";
    }
    export -f nd_on_each_file_handler;
    parallel nd_on_each_file_handler ::: "${authorized_key_path}"/*.pub;
  );
}
