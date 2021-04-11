#!/usr/bin/env bash

# Set the volume of the specified issue(s).
cmx_set_volume() {
  : "${2?"Usage: ${FUNCNAME} FILE|DIRECTORY VOLUME"}";
  the_volume="${2}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_set_volume "${the_filename}" "${the_volume}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    cmx_set_metadata "${the_filename}" "volume=${the_volume}";
  fi;
}
