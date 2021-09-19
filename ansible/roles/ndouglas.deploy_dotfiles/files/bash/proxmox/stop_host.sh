#!/usr/bin/env bash

# Stop a Proxmox VE host.
pve_stop_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.proxmox' 'stop_host.yaml';
  popd > /dev/null;
}
