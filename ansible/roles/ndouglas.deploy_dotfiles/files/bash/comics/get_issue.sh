#!/usr/bin/env bash

# Get issue number.
cmx_get_issue() {
  : "${1?"Usage: ${FUNCNAME} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
  fi;
  cmx_get_metadata_field "${the_filename}" "issue" "${the_metadata}";
}
