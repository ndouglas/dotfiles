#!/usr/bin/env bash

# Deploy an instance of Transmission to handle a specific announce URL.
torrent_deploy_instance() {
  : "${2?"Usage: ${FUNCNAME} ID ANNOUNCE"}";
  instance_id="${1}";
  instance_domain="${2}";
  padded_instance_id="$(printf "%04d" "${instance_id}")";
  role_name='ndouglas.torrents';
  task_file='deploy_transmission_instance.yaml';
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-playbook "${@:3}" /dev/stin <<END
---
- hosts: localhost
  tasks:

  - name: 'Execute $role_name:$task_file'
    ansible.builtin.include_role:
      name: '$role_name'
      tasks_from: '$task_file'
    vars:
      instance_id: '$instance_id'
      padded_instance_id: '$padded_instance_id'
      instance_domain: '$instance_domain'
END
  popd > /dev/null;
}
