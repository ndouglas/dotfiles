#!/usr/bin/env bash

# Rebuild a Kubernetes cluster.
k8s_rebuild_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  k8s_remove_cluster "${host}";
  k8s_create_cluster "${host}";
  k8s_setup_cluster "${host}";
}
