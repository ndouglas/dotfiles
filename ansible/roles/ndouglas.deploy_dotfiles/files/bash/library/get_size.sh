#!/usr/bin/env bash

# Get file or directory size.
nd_get_size() {
  : "${1?"Usage: ${FUNCNAME} FILE|DIRECTORY"}";
  the_path="${1}";
  du -sb "${the_path}" | cut -f1;
}
