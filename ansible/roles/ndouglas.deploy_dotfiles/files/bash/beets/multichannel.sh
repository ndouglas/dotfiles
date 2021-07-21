#!/usr/bin/env bash

# Use the "Multichannel" Beets library.
beets_multichannel() {
  : "${1?"Usage: ${FUNCNAME[0]} ARGUMENTS..."}";
  beets_use_library multichannel "${@}";
}
