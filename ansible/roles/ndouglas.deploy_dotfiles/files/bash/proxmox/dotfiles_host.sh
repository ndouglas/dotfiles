#!/usr/bin/env bash

# Install dotfiles on a Proxmox VE host.
pve_dotfiles_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.proxmox_host' 'dotfiles_pve_host.yaml';
  popd > /dev/null;
}
