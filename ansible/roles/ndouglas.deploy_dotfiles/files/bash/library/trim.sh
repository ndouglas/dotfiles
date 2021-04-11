#!/usr/bin/env bash

# Trim leading and trailing whitespace.
nd_trim() {
  : "${1?"Usage: ${FUNCNAME} TEXT"}";
  the_text="${1}";
  nd_trim_left "$(nd_trim_right "${the_text}")";
}
