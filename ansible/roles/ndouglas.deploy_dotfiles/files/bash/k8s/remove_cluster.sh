#!/usr/bin/env bash

# Remove a Proxmox VE Kubernetes cluster.
k8s_remove_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.kubernetes' 'remove_cluster.yaml';
  popd > /dev/null;
}
