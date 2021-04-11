#!/usr/bin/env bash

# Check if we can safely move a directory.
#
# Returns TRUE if no files in the DIRECTORY have been modified in the last
# MARGIN minutes, otherwise FALSE.
nd_can_safely_move_directory() {
  : "${2?"Usage: ${FUNCNAME} DIRECTORY MARGIN"}";
  the_directory="${1}";
  the_margin="${2}";
  items=($(find "${the_directory}" -mmin -"${the_margin}"));
  [ "${#items[@]}" -eq 0 ];
}
