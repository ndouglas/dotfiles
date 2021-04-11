#!/usr/bin/env bash

# Find and rename all covert CBZs.
cmx_rename_covert_cbzs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  cmx_find_covert_cbzs "${the_directory}" \
    | while read the_filename; do
        new_path="$(cmx_rename_covert_cbz "${the_filename}")";
      done;
}
