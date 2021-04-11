#!/usr/bin/env bash

# Check if we can safely move a file or directory.
#
# Returns TRUE if the ITEM hasn't been modified within the last MARGIN minutes.
nd_can_safely_move_item() {
  : "${2?"Usage: ${FUNCNAME} FILE|DIRECTORY MARGIN"}";
  the_item="${1}";
  the_margin="${2}";
  if [ -f "${the_item}" ]; then
    nd_can_safely_move_file "${the_item}" "${the_margin}";
  elif [ -d "${the_item}" ]; then
    nd_can_safely_move_directory "${the_item}" "${the_margin}";
  fi;
}
