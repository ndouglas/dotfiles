#!/usr/bin/env bash

# Determine if a non-CBZ file is secretly a CBZ.
cmx_is_covert_cbz() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_basename="$(basename "${the_filename}")";
  the_extension="${the_basename##*.}";
  if [ "${the_extension}" == "cbr" ]; then
    echo "$(nd_is_zip_file "${the_filename}")";
  else
    echo -1;
  fi;
}
