#!/usr/bin/env bash

# Create a Kubernetes cluster.
k8s_create_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.kubernetes' 'create_cluster.yaml';
  popd > /dev/null;
}
