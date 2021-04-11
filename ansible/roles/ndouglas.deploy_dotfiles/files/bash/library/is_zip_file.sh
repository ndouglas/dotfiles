#!/usr/bin/env bash

# Check to see if a file is a ZIP file.
nd_is_zip_file() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  nd_require_commands zip;
  the_filename="${1}";
  if [ -x "$(command -v unzip)" ]; then
    zip -T "${the_filename}" > /dev/null 2>&1;
    echo $?;
  else
    7z t "${the_filename}" > /dev/null 2>&1;
    echo $?;
  fi
}
