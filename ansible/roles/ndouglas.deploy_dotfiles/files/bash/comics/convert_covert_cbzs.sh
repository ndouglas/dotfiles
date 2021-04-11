#!/usr/bin/env bash

# Convert covert CBZs to CBZ.
cmx_convert_covert_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  cmx_find_covert_cbrs "${the_directory}" \
    | while read the_filename; do
        new_filename="$(cmx_rename_covert_cbr "${the_filename}")";
        cmx_convert_cbr_to_cbz "${new_filename}";
      done;
}
