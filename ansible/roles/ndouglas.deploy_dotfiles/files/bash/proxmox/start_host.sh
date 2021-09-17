#!/usr/bin/env bash

# Start a Proxmox VE host.
pve_start_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=no ans_run_role_task "${host}" 'ndouglas.proxmox_host' 'start_pve_host.yaml';
  popd > /dev/null;
}