#!/usr/bin/env bash

# Get the index of a color in the ANSI color list.
ansi_get_color_index() {
  : "${1?"Usage: ${FUNCNAME} COLOR"}";
  needle="${1}";
  colors=(black red green yellow blue magenta cyan white);
  for index in "${!colors[@]}"; do
    if [[ "${colors[${index}]}" = "${needle}" ]]; then
      echo "${index}";
    fi
  done;
}
