#!/usr/bin/env bash

# Get issue numbers.
cmx_get_issue_numbers() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  cmx_get_issues "${the_directory}" | while read the_filename; do
    cmx_get_issue_number "${the_filename}";
  done;
}
