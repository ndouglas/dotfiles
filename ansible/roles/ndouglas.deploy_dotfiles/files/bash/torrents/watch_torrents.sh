#!/usr/bin/env bash

# Given a watch directory, process any existing torrent files accordingly.
torrent_watch_torrents() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  torrent_directory="${1}";
  if test -n "$(shopt -s nullglob; echo "${torrent_directory}"/*.torrent)"; then
    for torrent_file in "${torrent_directory}"/*.torrent; do
      echo "${torrent_file}";
      if [ -f "${torrent_file}" ]; then
        torrent_assign_torrent "${torrent_file}";
      fi;
    done;
  fi;
}
