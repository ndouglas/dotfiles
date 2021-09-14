#!/usr/bin/env bash

# Create a Proxmox VE host.
pve_setup_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=no ans_run_role_task "${host}" 'ndouglas.proxmox_host' 'setup_pve_host.yaml';
  popd > /dev/null;
}
