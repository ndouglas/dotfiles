#!/usr/bin/env bash

# Change the extension of all matching files.
nd_change_extension() {
  : "${3?"Usage: ${FUNCNAME} DIRECTORY CURRENT NEW"}";
  the_directory="${1}";
  current_ext="${2}";
  new_ext="${3}";
  find "${the_directory}" -type f -name "*.${current_ext}" -print0 \
    | while read -d $'\0' the_filename; do
        mv "${the_filename}" "${the_filename%.${current_ext}}.${new_ext}";
      done;
}
