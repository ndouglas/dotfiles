#!/usr/bin/env bash

# Retrieve the instance name for an instance for the specified torrent
torrent_get_best_instance() {
  : "${1?"Usage: ${FUNCNAME} TORRENT_FILE|DOMAIN"}";
  best_instance_id="$(torrent_get_best_instance_id "${1}")";
  if [ "$?" -eq "-1" ]; then
    echo "Unable to find a current instance ID for ${1}." >&2;
    return 255;
  fi
  best_instance_id_path="/torrents/ids/${best_instance_id}";
  if [ -L "${best_instance_id_path}" ]; then
    original="$(readlink -f "${best_instance_id_path}")";
    basename "${original}";
  else
    echo "Unable to find an original instance for ID ${best_instance_id} ." >&2;
    return 255;
  fi
}
