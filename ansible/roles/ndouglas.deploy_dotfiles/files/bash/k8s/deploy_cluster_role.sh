#!/usr/bin/env bash

# (Re)deploy a Kubernetes cluster role.
k8s_deploy_cluster_role() {
  : "${1?"Usage: ${FUNCNAME[0]} CLUSTER_NAME ROLE_NAME"}";
  host_expression="${1}";
  role="$(basename "${2}" ".yaml")";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-playbook "${@:3}" /dev/stdin <<END
---
- hosts: $host_expression
  remote_user: 'root'
  tasks:

    - name: "Deploy ${role} role."
      ansible.builtin.include_role:
        name: 'ndouglas.kubernetes'
        tasks_from: "roles/${role}.yaml"
      when: 'k8s_role == "master"'

END
  popd > /dev/null;
}
