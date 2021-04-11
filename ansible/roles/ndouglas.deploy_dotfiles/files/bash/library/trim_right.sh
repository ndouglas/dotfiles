#!/usr/bin/env bash

# Trim trailing whitespace.
nd_trim_right() {
  : "${1?"Usage: ${FUNCNAME} TEXT"}";
  the_text="${1}";
  echo -e "${the_text}" | sed -e 's/[[:space:]]*$//';
}
