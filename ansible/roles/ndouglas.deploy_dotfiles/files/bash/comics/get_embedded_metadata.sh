#!/usr/bin/env bash

# Get ComicRack metadata of the specified issue.
cmx_get_embedded_metadata() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  comictagger -p -t cr "${the_filename}";
  if [ ! -z "${CMX_DEBUG_METADATA}" ]; then
    echo "Retrieved embedded metadata from ${the_filename}" >&2;
  fi;
}
