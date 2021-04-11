#!/usr/bin/env bash

# Set the issue number of the specified issue.
cmx_set_issue() {
  : "${2?"Usage: ${FUNCNAME} FILE ISSUE_NUMBER"}";
  the_filename="${1}";
  the_issue="${2}";
  cmx_set_metadata "${the_filename}" "issue=${the_issue}";
}
