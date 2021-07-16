#!/usr/bin/env bash

# Get title.
cmx_get_title() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
  fi;
  cmx_get_metadata_field "${the_filename}" "title" "${the_metadata}";
}
