#!/usr/bin/env bash

# Check to see if a file is a RAR file.
nd_is_rar_file() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  nd_require_commands unrar;
  the_filename="${1}";
  unrar t "${the_filename}" > /dev/null 2>&1;
  echo $?;
}
