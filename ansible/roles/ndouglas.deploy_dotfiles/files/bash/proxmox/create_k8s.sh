#!/usr/bin/env bash

# Create a Proxmox VE kubernetes cluster.
pve_create_k8s() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=no ans_run_role_task "${host}" 'ndouglas.proxmox_k8s' 'create_cluster.yaml';
  popd > /dev/null;
}
