#!/usr/bin/env bash

# Set the series and volume of the specified issue.
cmx_set_series_volume() {
  : "${3?"Usage: ${FUNCNAME} FILE|DIRECTORY SERIES VOLUME"}";
  the_series="${2}";
  the_volume="${3}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_set_series_volume "${the_filename}" "${the_series}" "${the_volume}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    cmx_set_metadata "${the_filename}" "series=${the_series},volume=${the_volume}";
  fi;
}
