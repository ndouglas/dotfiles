#!/usr/bin/env bash

# Get specified field from metadata.
cmx_get_metadata_field() {
  : "${1?"Usage: ${FUNCNAME} FILE FIELD [METADATA]"}";
  the_filename="${1}";
  the_field="${2}";
  the_metadata="${3}";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
  fi;
  echo "${the_metadata}" | grep '^'${the_field}':' | nd_trim "$(awk '{$1=""; print $0}')";
}
