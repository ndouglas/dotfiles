#!/usr/bin/env bash

# Show facts about a specific host.
ans_show_host_facts() {
  : "${1?"Usage: ${FUNCNAME} HOST"}";
  host="${1}";
  ansible -i "${host}" -m ansible.builtin.setup;
}
