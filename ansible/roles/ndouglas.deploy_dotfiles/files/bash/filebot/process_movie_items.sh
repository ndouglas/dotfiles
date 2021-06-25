#!/usr/bin/env bash

# Processes movie items in the specified source directory.
filebot_process_movie_items() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY DESTINATION"}";
  the_directory="${1}";
  the_destination="${2}";
  the_margin=5;
  echo "Processing movie items..." >&2;
  find "${the_directory}" -mindepth 1 -maxdepth 1 -mmin +"${the_margin}" -print0 \
    | while read -d $'\0' the_item; do
        filebot_process_movie_item "${the_item}" "${the_destination}";
      done;
}
