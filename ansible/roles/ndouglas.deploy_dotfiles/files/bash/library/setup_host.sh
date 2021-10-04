#!/usr/bin/env bash

# Setup a host.
nd_setup_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ans_run_role "${host}" 'ndouglas.setup_host' -e 'ansible_ssh_user=root';
  popd > /dev/null;
}
