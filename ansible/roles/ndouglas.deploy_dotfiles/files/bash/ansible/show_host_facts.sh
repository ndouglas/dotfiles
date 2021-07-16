#!/usr/bin/env bash

# Show facts about a specific host.
ans_show_host_facts() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  ansible all -i "${host}," -m ansible.builtin.setup;
}
