#!/usr/bin/env bash

# Get metadata of the specified issue from a file.
cmx_get_cached_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  metadata_path="$(cmx_get_metadata_path "${the_filename}")";
  if [ -f "${metadata_path}" ]; then
    if [ ! -z "${CMX_DEBUG_METADATA}" ]; then
      echo "Retrieved cached metadata from ${metadata_path}" >&2;
    fi;
    cat "${metadata_path}";
  fi
}
