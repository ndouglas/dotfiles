#!/usr/bin/env bash

# List albums for the matching artists.
beets_list_artist_albums() {
  : "${1?"Usage: ${FUNCNAME[0]} ARTIST_EXPRESSION"}";
  artist_expression="${@}";
  find "/Music" -mindepth 4 -maxdepth 4 -type d -iname "*${artist_expression}*" -print \
    | sort -h \
    | while read the_artist_path; do
        the_library="$(basename "$(dirname "$(dirname "$(dirname "${the_artist_path}")")")")";
        the_artist="$(basename "${the_artist_path}")";
        echo -e "\n[${the_library}]\n${the_artist}";
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
