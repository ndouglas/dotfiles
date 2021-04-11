#!/usr/bin/env bash

# Set the issue numbers of the specified issues.
cmx_number_issues() {
  : "${2?"Usage: ${FUNCNAME} START ISSUES..."}";
  the_counter="${1}";
  shift;
  for the_filename in "${@}"; do
    cmx_set_issue "${the_filename}" "${the_counter}";
    (( the_counter++ ));
  done;
}
