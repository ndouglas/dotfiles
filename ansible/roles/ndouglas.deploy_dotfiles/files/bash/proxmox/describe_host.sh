#!/usr/bin/env bash

# Describe a Proxmox VE host.
pve_describe_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=no ans_run_role_task "${host}" 'ndouglas.proxmox_host' 'describe_pve_host.yaml';
  popd > /dev/null;
}
