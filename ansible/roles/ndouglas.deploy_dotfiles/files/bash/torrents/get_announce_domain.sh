#!/usr/bin/env bash

# Retrieve the domain of the announce URL of a specified torrent file.
torrent_get_announce_domain() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE"}";
  torrent_file="${1}";
  torrent_get_announce_url "${torrent_file}" | sed -e 's|^[^/]*//||' -e 's|/.*$||' -e 's|:[0-9]*||';
}
