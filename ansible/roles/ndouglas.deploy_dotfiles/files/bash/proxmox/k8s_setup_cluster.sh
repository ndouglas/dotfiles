#!/usr/bin/env bash

# Setup a Proxmox VE kubernetes cluster.
pve_k8s_setup_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.proxmox_k8s' 'setup_cluster.yaml';
  popd > /dev/null;
}
