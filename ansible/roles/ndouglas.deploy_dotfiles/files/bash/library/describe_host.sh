#!/usr/bin/env bash

# Describe a host.
nd_describe_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ANSIBLE_GATHERING=explicit ans_run_role_task "${host}" 'ndouglas.library' 'describe_host.yaml';
  popd > /dev/null;
}
