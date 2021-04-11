#!/usr/bin/env bash

# Get issue number.
cmx_get_issue_number() {
  : "${1?"Usage: ${FUNCNAME} FILENAME"}";
  the_filename="${1}";
  the_filename="$(basename "${1}")";
  shopt -s extglob;
  echo "${the_filename}" | sed 's@^[^0-9]*\([0-9]\+\).*@\1@' | sed -e 's/^0\+//';
}
