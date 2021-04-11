#!/usr/bin/env bash

# Run a specified role from the CLI.
ans_run_role() {
  : "${2?"Usage: ${FUNCNAME} HOST|GROUP ROLE"}";
  host_expression="${1}";
  role_name="${2}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-playbook "${@:3}" /dev/stdin <<END
---
- hosts: $host_expression
  roles:
    - $role_name
END
  popd > /dev/null;
}
