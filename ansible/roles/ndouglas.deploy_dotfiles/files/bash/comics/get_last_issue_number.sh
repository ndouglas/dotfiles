#!/usr/bin/env bash

# Prints the last extant issue number of a collection.
cmx_get_last_issue_number() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  last_issue="$(cmx_get_last_issue "${the_directory}")";
  cmx_get_issue_number "${last_issue}";
}
