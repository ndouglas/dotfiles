#!/usr/bin/env bash

cmx_clean_directory() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  # Fake CBZs (actually CBR) -> valid CBZs
  cmx_convert_covert_cbrs "${the_directory}";
  # Fake CBRs (actually CBZ) -> valid CBZs
  # Real CBRs -> valid CBZs
  cmx_convert_cbr_to_cbz "${the_directory}";
}
