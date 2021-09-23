#!/usr/bin/env bash

# Reset (destroy and recreate) a Proxmox VE Kubernetes cluster.
k8s_reset_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ans_run_role_task "${host}" 'ndouglas.kubernetes' 'reset_cluster.yaml' -e 'ansible_user=root';
  popd > /dev/null;
}
