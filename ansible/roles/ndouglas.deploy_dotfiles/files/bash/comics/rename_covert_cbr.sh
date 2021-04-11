#!/usr/bin/env bash

# Renames covert CBRs so they are no longer covert.
cmx_rename_covert_cbr() {
  : "${1?"Usage: ${FUNCNAME} FILENAME"}";
  the_filename="${1}";
  the_dirname="$(dirname "${the_filename}")";
  the_basename="$(basename "${the_filename}" ".cbz")";
  new_filename="${the_basename}.cbr";
  new_path="${the_dirname}/${new_filename}";
  mv "${the_filename}" "${new_path}";
  echo "${new_path}";
}
