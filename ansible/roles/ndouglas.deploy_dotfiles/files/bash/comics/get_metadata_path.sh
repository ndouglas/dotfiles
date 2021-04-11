#!/usr/bin/env bash

# Get the filename of the specified issue's cached metadata.
cmx_get_metadata_path() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_dirname="$(dirname "${the_filename}")";
  echo "${the_dirname}/$(cmx_get_metadata_filename "${the_filename}")";
}
