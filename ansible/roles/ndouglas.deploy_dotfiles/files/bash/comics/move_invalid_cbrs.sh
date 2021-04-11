#!/usr/bin/env bash

# Move the invalid CBRs to their destination.
cmx_move_invalid_cbrs() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  the_destination="/volume1/Downloads/InvalidCbrs";
  cmx_find_invalid_cbrs "${the_directory}" \
    | while read the_filename; do
        mv -v "${the_filename}" "${the_destination}/";
      done;
  nd_declutter "${the_directory}";
}
