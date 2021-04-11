#!/usr/bin/env bash

# Prints the last extant issue of a collection.
cmx_get_last_issue() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  files=( "${the_directory}"/*.cbz );
  echo "${files[${#files[@]}-1]}";
}
