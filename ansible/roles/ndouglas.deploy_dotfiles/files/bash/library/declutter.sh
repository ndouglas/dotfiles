#!/usr/bin/env bash

# Remove clutter from directories.
nd_declutter() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" -type f -name '.DS_Store' -delete;
  find "${the_directory}" -type f -name '._*' -delete;
  nd_zap_eadir "${the_directory}";
}
