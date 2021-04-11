#!/usr/bin/env bash

# Convert covert CBRs to CBZ.
cmx_convert_covert_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  cmx_rename_covert_cbrs "${the_directory}" \
    | while read the_filename; do
        cmx_convert_cbr_to_cbz "${the_filename}";
      done;
}
