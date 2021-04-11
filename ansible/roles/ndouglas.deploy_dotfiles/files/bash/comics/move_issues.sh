#!/usr/bin/env bash

# Move the issues to their destination.
cmx_move_issues() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -iname '*.cbz' -print0 \
    | while read -d $'\0' the_filename; do
        cmx_move_issue "${the_filename}";
      done;
  nd_declutter "${the_directory}";
}
