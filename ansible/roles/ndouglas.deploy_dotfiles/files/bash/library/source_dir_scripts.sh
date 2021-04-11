#!/usr/bin/env bash

nd_source_dir_scripts() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  directory="${1}";
  if [ -d "${directory}" ]; then
    if test -n "$(shopt -s nullglob; echo "${directory}"/*.sh)"; then
      for file in "${directory}"/*.sh; do
        source "${file}";
      done;
      unset file;
    fi;
  fi;
}
