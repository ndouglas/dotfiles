#!/usr/bin/env bash

# Retrieve the announce URL of a specified torrent file.
torrent_get_announce_url() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE"}";
  torrent_file="${1}";
  torrent_json="$(pytp "${torrent_file}")";
  echo "${torrent_json}" | jq '.announce' -r;
}
