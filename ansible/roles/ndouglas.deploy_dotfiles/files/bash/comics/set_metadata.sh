#!/usr/bin/env bash

# Set the metadata of the specified issue.
cmx_set_metadata() {
  : "${2?"Usage: ${FUNCNAME} FILE METADATA"}";
  the_filename="${1}";
  the_metadata="${2}";
  comictagger -s -t cr -m "${the_metadata}" "${the_filename}";
  cmx_write_cached_metadata "${the_filename}";
}
