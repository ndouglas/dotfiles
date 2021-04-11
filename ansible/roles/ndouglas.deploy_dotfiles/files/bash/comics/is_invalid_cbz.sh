#!/usr/bin/env bash

# Determine if a file is an invalid CBZ.
cmx_is_invalid_cbz() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_basename="$(basename "${the_filename}")";
  the_extension="${the_basename##*.}";
  if [ "${the_extension}" == "cbz" ]; then
    if [ "$(nd_is_rar_file "${the_filename}")" -ne 0 ] && [ "$(nd_is_zip_file "${the_filename}")" -ne 0 ]; then
      echo 0;
    else
      echo -1;
    fi;
  else
    echo -1;
  fi;
}
