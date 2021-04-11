#!/usr/bin/env bash

# Prints the extant issues of a collection.
cmx_get_issues() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  files=( "${the_directory}"/*.cbz );
  for i in ${!files[@]}; do
    echo "${files[${i}]}";
  done;
}
