#!/usr/bin/env bash

# Finds all of the sneaky files that claim they aren't RAR but actually are.
cmx_find_covert_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -name '*.cbz' -print0 \
    | while read -d $'\0' the_filename; do
        if [ "$(cmx_is_covert_cbr "${the_filename}")" -eq 0 ]; then
          echo "Found covert CBR: ${the_filename}" >&2;
          echo "${the_filename}";
        fi;
      done;
}
