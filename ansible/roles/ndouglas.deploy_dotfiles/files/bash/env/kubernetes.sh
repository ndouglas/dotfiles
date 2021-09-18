#!/usr/bin/env bash

if test -n "$(shopt -s nullglob; echo ~/.kube/*.cluster.config)"; then
  for config in ~/.kube/*.cluster.config; do
    KUBECONFIG=${KUBECONFIG:-~/.kube/config}:$(realpath "${config}");
  done;
  unset config;
fi;
KUBECONFIG="$(printf %s "${KUBECONFIG}" | awk -vRS=: '!a[$0]++' | paste -s -d:)";
export KUBECONFIG;
