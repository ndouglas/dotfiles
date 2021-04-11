#!/usr/bin/env bash

# Indicate whether the directory has files of a specified type.
nd_directory_has_files_of_type() {
  : "${2?"Usage: ${FUNCNAME} DIRECTORY FILETYPE"}";
  the_directory="${1}";
  the_filetype="${2}";
  items=($(find "${the_directory}" -maxdepth 1 -iname "*.${the_filetype}"));
  [ "${#items[@]}" -gt 0 ];
}
