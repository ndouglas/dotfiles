#!/usr/bin/env bash

# List matching artists.
beets_list_artist() {
  : "${1?"Usage: ${FUNCNAME} ARTIST_EXPRESSION"}";
  artist_expression="${@}";
  find "/volume1/Music/Main" -mindepth 2 -maxdepth 2 -type d -iname "*${artist_expression}*" -print \
    | sort -h \
    | while read the_artist_path; do
        basename "${the_artist_path}";
      done;
}

bla() {
  beets_list_artist "${@}";
}

export -f bla;
