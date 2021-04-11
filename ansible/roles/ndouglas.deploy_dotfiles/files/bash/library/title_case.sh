#!/usr/bin/env bash

# Title-case some string.
nd_title_case() {
  : "${1?"Usage: ${FUNCNAME} TEXT..."}";
  the_text="${@}";
  sed 's/.*/\L&/; s/[a-z]*/\u&/g' <<< "${the_text}";
}
