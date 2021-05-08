#!/usr/bin/env bash

# Given a watch directory, process any existing torrent files accordingly.
torrents_watch_torrents() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  torrent_directory="${1}";
  for torrent_file in "${torrent_directory}"/*.torrent; do
    echo "${torrent_File}" >&2;
  done;
}