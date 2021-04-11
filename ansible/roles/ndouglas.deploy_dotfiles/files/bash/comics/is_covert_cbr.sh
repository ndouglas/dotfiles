#!/usr/bin/env bash

# Determine if a non-CBR file is secretly a CBR.
cmx_is_covert_cbr() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_basename="$(basename "${the_filename}")";
  the_extension="${the_basename##*.}";
  if [ "${the_extension}" == "cbz" ]; then
    echo "$(nd_is_rar_file "${the_filename}")";
  else
    echo -1;
  fi;
}
