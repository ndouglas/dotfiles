#!/usr/bin/env bash

# Retrieve the next Transmission client ID.
torrent_get_next_client_id() {
  highest_id="$(ls '/torrents/ids/' --color=never | grep -E '[0-9]+$' | sort -n | tail -1)";
  (( next_id = highest_id + 1 ));
  echo "${next_id}";
}
