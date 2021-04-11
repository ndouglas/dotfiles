#!/usr/bin/env bash

# Looks up the metadata for the specified issue.
cmx_get_remote_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  if comictagger -s -t cr -f -o "${the_filename}"; then
    comictagger -p -t cr  "${the_filename}";
  fi;
}
