#!/usr/bin/env bash

# Prints the first extant issue number of a collection.
cmx_get_first_issue_number() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  first_issue="$(cmx_get_first_issue "${the_directory}")";
  cmx_get_issue_number "${first_issue}";
}
