#!/usr/bin/env bash

# Get metadata of the specified issue.
cmx_get_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_metadata="$(cmx_get_cached_metadata "${the_filename}")";
  if [ ! -z "${the_metadata}" ]; then
    echo "${the_metadata}";
  else
    the_metadata="$(cmx_get_embedded_metadata "${the_filename}")";
    if [ ! -z "${the_metadata}" ]; then
      echo "${the_metadata}";
    else
      the_metadata="$(cmx_get_remote_metadata "${the_filename}")";
      echo "${the_metadata}";
    fi;
  fi;
}
