#!/usr/bin/env bash

# Destroy a Proxmox VE Kubernetes cluster.
k8s_destroy_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.kubernetes' 'destroy_cluster.yaml';
  popd > /dev/null;
}
