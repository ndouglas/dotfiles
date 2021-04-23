#!/usr/bin/env bash

# Set up a Proxmox VE host.
pve_setup_host() {
  : "${1?"Usage: ${FUNCNAME} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ans_run_role_task "${host}" 'ndouglas.proxmox.setup' 'setup_pve_host.yaml';
  popd > /dev/null;
}
