#!/usr/bin/env bash

# Retrieve the instance name for an instance for the specified torrent
torrent_get_current_instance() {
  : "${1?"Usage: ${FUNCNAME} TORRENT_FILE|DOMAIN"}";
  current_instance_id="$(torrent_get_current_instance_id "${1}")";
  if [ "${current_instance_id}" -eq "-1" ]; then
    echo "Unable to find a current instance ID for ${1}." >&2;
    exit -1;
  fi
  current_instance_id_path="/torrents/ids/${current_instance_id}";
  if [ -L "${current_instance_id_path}" ]; then
    original="$(readlink -f "${current_instance_id_path}")";
    echo "$(basename "${original}")";
  else
    echo "Unable to find an original instance for ID ${current_instance_id} ." >&2;
    exit -1;
  fi
}
