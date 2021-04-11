#!/usr/bin/env bash

# Write tags to the file if nothing else exists.
cmx_write_empty_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILENAME|DIRECTORY"}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_write_empty_metadata "${the_filename}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    comictagger -s -t cr "${the_filename}";
  fi;
}
