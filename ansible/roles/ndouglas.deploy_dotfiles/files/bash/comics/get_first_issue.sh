#!/usr/bin/env bash

# Prints the first extant issue of a collection.
cmx_get_first_issue() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  files=( "${the_directory}"/*.cbz );
  echo "${files[0]}";
}
