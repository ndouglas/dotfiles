#!/usr/bin/env bash

# Remove duplicate paths from a path string.
nd_unique_paths() {
  : "${1?"Usage: ${FUNCNAME[0]} PATH1:PATH2:PATH3..."}";
  the_path="${1}";
  printf %s "${the_path}" | awk -vRS=: '!a[$0]++' | paste -s -d:;
}
