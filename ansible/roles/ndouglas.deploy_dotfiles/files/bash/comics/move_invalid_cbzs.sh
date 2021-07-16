#!/usr/bin/env bash

# Move the invalid CBZs to their destination.
cmx_move_invalid_cbzs() {
  : "${1?"Usage: ${FUNCNAME[0]} DIRECTORY"}";
  the_directory="${1}";
  the_destination="/volume1/Downloads/InvalidCbzs";
  cmx_find_invalid_cbzs "${the_directory}" \
    | while read the_filename; do
        mv -v "${the_filename}" "${the_destination}/";
      done;
  nd_declutter "${the_directory}";
}
