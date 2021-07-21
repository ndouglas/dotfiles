#!/usr/bin/env bash

# Use the specified Beets library.
beets_use_library() {
  : "${1?"Usage: ${FUNCNAME[0]} LIBRARY ARGUMENTS..."}";
  the_library="${1^}";
  library_path="/Music/${the_library}";
  config_path="${library_path}/beets";
  pending_path="/Music/Pending";
  beets_wrapper "${config_path}" "${music_path}" "${pending_path}" "${@:2}";
}
