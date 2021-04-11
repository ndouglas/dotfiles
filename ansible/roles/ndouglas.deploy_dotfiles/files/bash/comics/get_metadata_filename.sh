#!/usr/bin/env bash

# Get the filename of the specified issue's cached metadata.
cmx_get_metadata_filename() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_basename="$(basename "${the_filename}" ".cbz")";
  echo ".${the_basename}.txt";
}
