#!/usr/bin/env bash

# Set up a Proxmox VE node.
pve_setup_node() {
  : "${1?"Usage: ${FUNCNAME[0]} NODE"}";
  node="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ans_run_role_task "${node}" 'ndouglas.proxmox_node' 'setup_pve_node.yaml';
  popd > /dev/null;
}
