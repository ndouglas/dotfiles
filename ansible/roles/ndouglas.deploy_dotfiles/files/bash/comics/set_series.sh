#!/usr/bin/env bash

# Set the series of the specified issue.
cmx_set_series() {
  : "${2?"Usage: ${FUNCNAME} FILE|DIRECTORY SERIES"}";
  the_series="${2}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_set_series "${the_filename}" "${the_series}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    cmx_set_metadata "${the_filename}" "series=${the_series}";
  fi;
}
