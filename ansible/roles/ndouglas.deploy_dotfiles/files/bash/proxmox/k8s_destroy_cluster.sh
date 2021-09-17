#!/usr/bin/env bash

# Destroy a Proxmox VE kubernetes cluster.
pve_k8s_destroy_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.proxmox_k8s' 'destroy_cluster.yaml';
  popd > /dev/null;
}
