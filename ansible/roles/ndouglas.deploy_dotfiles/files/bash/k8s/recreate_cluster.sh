#!/usr/bin/env bash

# Recreate a Kubernetes cluster.
k8s_recreate_cluster() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME"}";
  host="${1}";
  k8s_destroy_cluster "${host}";
  k8s_create_cluster "${host}";
  k8s_setup_cluster "${host}";
}
