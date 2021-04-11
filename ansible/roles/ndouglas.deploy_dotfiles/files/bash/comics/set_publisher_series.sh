#!/usr/bin/env bash

# Set the publisher and series of the specified issue.
cmx_set_publisher_series() {
  : "${2?"Usage: ${FUNCNAME} FILE|DIRECTORY PUBLISHER SERIES"}";
  the_publisher="${2}";
  the_series="${3}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_set_publisher_series "${the_filename}" "${the_publisher}" "${the_series}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    cmx_set_metadata "${the_filename}" "publisher=${the_publisher},series=${the_series}";
  fi;
}
