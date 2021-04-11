#!/usr/bin/env bash

# Get issue imprint.
cmx_get_imprint() {
  : "${1?"Usage: ${FUNCNAME} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
  fi;
  cmx_get_metadata_field "${the_filename}" "imprint" "${the_metadata}";
}
