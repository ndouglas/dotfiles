#!/usr/bin/env bash

# Use the "All" Beets library.
beets_all() {
  : "${1?"Usage: ${FUNCNAME[0]} ARGUMENTS..."}";
  beets_use_library all "${@}";
}
