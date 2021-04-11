#!/usr/bin/env bash

# Split the directory into subdirectories.
nd_split_directory() {
  : "${2?"Usage: ${FUNCNAME} DIRECTORY MAX_FILES"}";
  the_directory="${1}";
  max_files="${2}";
  count_files="$(find "${the_directory}" -maxdepth 1 -type f | wc -l)";
  num_dirs=$(( ${count_files} / ${max_files} + 1 ));
  for the_number in $(seq 1 "${num_dirs}"); do
    the_destination="${the_directory}/${the_number}";
    mkdir -p "${the_destination}";
    find "${the_directory}" -maxdepth 1 -type f \
      | head -n "${max_files}" \
      | while read the_filename; do
          mv -v "${the_filename}" "${the_destination}";
        done;
  done;
}
