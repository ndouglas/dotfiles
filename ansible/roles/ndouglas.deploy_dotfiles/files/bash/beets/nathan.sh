#!/usr/bin/env bash

# Use the "Nathan" Beets library.
beets_nathan() {
  : "${1?"Usage: ${FUNCNAME[0]} ARGUMENTS..."}";
  beets_use_library nathan "${@}";
}
