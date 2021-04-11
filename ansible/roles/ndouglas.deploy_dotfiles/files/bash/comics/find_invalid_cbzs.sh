#!/usr/bin/env bash

# Finds all of the broken files that claim they are ZIP but aren't.
cmx_find_invalid_cbzs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -iname '*.cbz' -print0 \
    | while read -d $'\0' the_filename; do
        if [ "$(cmx_is_invalid_cbz "${the_filename}")" -eq 0 ]; then
          echo "Found invalid CBZ: ${the_filename}" >&2;
          echo "${the_filename}";
        fi;
      done;
}
