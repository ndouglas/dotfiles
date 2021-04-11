#!/usr/bin/env bash

# Trim leading whitespace.
nd_trim_left() {
  : "${1?"Usage: ${FUNCNAME} TEXT"}";
  the_text="${1}";
  echo -e "${the_text}" | sed -e 's/^[[:space:]]*//';
}
