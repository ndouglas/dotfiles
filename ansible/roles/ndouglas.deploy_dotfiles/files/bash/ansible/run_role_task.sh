#!/usr/bin/env bash

# Run tasks from a file in a specified role from the CLI.
ans_run_role_task() {
  : "${3?"Usage: ${FUNCNAME[0]} HOST|GROUP ROLE TASKFILE"}";
  host_expression="${1}";
  role_name="${2}";
  task_file="${3}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-playbook "${@:4}" /dev/stdin <<END
---
- hosts: $host_expression
  tasks:

  - name: 'Execute $role_name:$task_file'
    include_role:
      name: '$role_name'
      tasks_from: '$task_file'
END
  popd > /dev/null;
}
