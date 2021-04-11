#!/usr/bin/env bash

# Change to a specified document directory.
nd_change_document_directory() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  nd_to_dayne /volume1/Documents/*/*/"${the_directory}"*;
}

alias cdd="nd_change_document_directory";
