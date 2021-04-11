#!/usr/bin/env bash

# Remove all @eaDir directories and their contents, and any empty directories afterward.
nd_zap_eadir() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type d -name '*@eaDir*' -print -exec rm -rf {} \; 2>/dev/null;
  find "${the_directory}" -type d -empty -print -delete;
}
