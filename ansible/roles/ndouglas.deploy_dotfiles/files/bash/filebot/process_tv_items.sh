#!/usr/bin/env bash

# Processes TV items in the specified source directory.
filebot_process_tv_items() {
  : "${1?"Usage: ${FUNCNAME[0]} DIRECTORY DESTINATION"}";
  the_directory="${1}";
  the_destination="${2}";
  the_margin=5;
  echo "Processing TV items..." >&2;
  find "${the_directory}" -mindepth 1 -maxdepth 1 -mmin +"${the_margin}" -print0 \
    | while read -d $'\0' the_item; do
        filebot_process_tv_item "${the_item}" "${the_destination}";
      done;
}
