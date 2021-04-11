#!/usr/bin/env bash

# Write the metadata for an issue to the file.
cmx_write_cached_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  if [ -z "${the_metadata}" ]; then
    if [ ! -z "${CMX_DEBUG_METADATA}" ]; then
      echo "Retrieving embedded metadata to cache for ${the_filename}" >&2;
    fi;
    the_metadata="$(cmx_get_embedded_metadata "${the_filename}")";
  fi;
  metadata_path="$(cmx_get_metadata_path "${the_filename}")";
  echo "${the_metadata}" > "${metadata_path}";
  if [ ! -z "${CMX_DEBUG_METADATA}" ]; then
    echo "Wrote metadata to ${metadata_path}" >&2;
  fi;
}
