#!/usr/bin/env bash

# Search by providing metadata.
cmx_search_by_filename() {
  : "${1?"Usage: ${FUNCNAME} FILE|DIRECTORY"}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -name '*.cbz' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_search_by_filename "${the_filename}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    comictagger -s -o -v -t cr -m "year=" -f "${the_filename}";
  fi;
}
