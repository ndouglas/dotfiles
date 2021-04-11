#!/usr/bin/env bash

# Remove name tags from the file.
cmx_remove_name_tags() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  if [ ! -f "${1}" ]; then
    echo "You need to specify an existing file." >&2;
    exit 1;
  fi;
  the_file="${1}";
  the_filename="$(basename "${the_file}")";
  the_dirname="$(dirname "${the_file}")";
  the_new_filename="${the_filename//\[[^\]]*\]/}";
  the_new_file="${the_dirname}/${the_new_filename}";
  mv -v "${the_file}" "${the_new_file}";
  echo "Removed name tags: ${the_file} -> ${the_new_file}" >&2;
}
