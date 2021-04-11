#!/usr/bin/env bash

# List albums for the matching artists.
beets_list_artist_albums() {
  : "${1?"Usage: ${FUNCNAME} ARTIST_EXPRESSION"}";
  artist_expression="${@}";
  find "/volume1/Music/Main" -mindepth 2 -maxdepth 2 -type d -iname "*${artist_expression}*" -print \
    | sort -h \
    | while read the_artist_path; do
        basename "${the_artist_path}";
        find "${the_artist_path}" -mindepth 1 -maxdepth 1 -type d -print \
          | sort -h \
          | while read the_album_path; do
              echo -e "\t$(basename "${the_album_path}")";
            done;
      done;
}

blaa() {
  beets_list_artist_albums "${@}";
}

export -f blaa;
