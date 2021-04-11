#!/usr/bin/env bash

# If it has a CBZ version already...
cmx_has_cbz_version() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  the_filename="${1}";
  the_dirname="$(dirname "${the_filename}")";
  the_basename="$(basename "${the_filename}" ".cbr")";
  the_sibling="${the_dirname}/${the_basename}.cbz";
  if [ -f "${the_sibling}" ]; then
    echo "${the_sibling}";
  fi;
}
