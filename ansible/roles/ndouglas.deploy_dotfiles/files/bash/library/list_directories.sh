#!/usr/bin/env bash

# List the directories at a specific path.
nd_list_directories() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  IFS=$'\n' read -rd '' -a the_subdirectories <<< "$(\ls -d -- "${the_directory}"/*)";
  for index in ${!the_subdirectories[@]}; do
    realpath "${the_subdirectories[${index}]}";
  done;
}
