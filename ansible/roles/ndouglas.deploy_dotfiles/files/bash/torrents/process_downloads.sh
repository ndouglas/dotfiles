#!/usr/bin/env bash

# Given a downloads directory, process any downloads accordingly.
torrent_process_downloads() {
  : "${1?"Usage: ${FUNCNAME[0]} DIRECTORY"}";
  downloads_directory="${1}";
  find "${downloads_directory}" -mindepth 1 -maxdepth 1 -type d -print0 \
    | while read -d $'\0' the_directory; do
        process_script="${the_directory}/process.sh";
        echo "Looking for ${process_script} ...";
        if [ -f "${process_script}" ]; then
          echo "Looking for files to feed to ${process_script} ...";
          find "${the_directory}" -mindepth 1 -maxdepth 1 -mmin +5 ! -path "${process_script}" -print0 \
            | while read -d $'\0' the_item; do
                echo "Feeding ${the_item} to ${process_script} ...";
                "${process_script}" "${the_item}";
              done;
        fi;
      done;
}
