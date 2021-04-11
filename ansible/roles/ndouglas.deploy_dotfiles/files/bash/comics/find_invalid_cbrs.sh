#!/usr/bin/env bash

# Finds all of the broken files that claim they are RAR but aren't.
cmx_find_invalid_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -iname '*.cbr' -print0 \
    | while read -d $'\0' the_filename; do
        if [ "$(cmx_is_invalid_cbr "${the_filename}")" -eq 0 ]; then
          echo "Found invalid CBR: ${the_filename}" >&2;
          echo "${the_filename}";
        fi;
      done;
}
