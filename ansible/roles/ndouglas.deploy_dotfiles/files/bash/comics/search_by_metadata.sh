#!/usr/bin/env bash

# Search by providing metadata.
cmx_search_by_metadata() {
  : "${1?"Usage: ${FUNCNAME[0]} METADATA FILE"}";
  comictagger -s -o -v -t cr -m "$@";
}
