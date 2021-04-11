#!/usr/bin/env bash

# Finds all of the sneaky files that claim they aren't ZIP but actually are.
cmx_find_covert_cbzs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -name '*.cbr' -print0 \
    | while read -d $'\0' the_filename; do
        if [ "$(cmx_is_covert_cbz "${the_filename}")" -eq 0 ]; then
          echo "Found covert CBZ: ${the_filename}" >&2;
          echo "${the_filename}";
        fi;
      done;
}
