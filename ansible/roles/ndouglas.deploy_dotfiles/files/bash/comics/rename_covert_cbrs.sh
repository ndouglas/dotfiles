#!/usr/bin/env bash

# Find and rename all covert CBRs.
cmx_rename_covert_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  cmx_find_covert_cbrs "${the_directory}" \
    | while read the_filename; do
        new_path="$(cmx_rename_covert_cbr "${the_filename}")";
      done;
}
