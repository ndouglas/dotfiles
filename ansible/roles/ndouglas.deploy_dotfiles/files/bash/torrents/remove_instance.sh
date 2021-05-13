#!/usr/bin/env bash

# Remove all traces of an existing instance
torrent_remove_instance() {
  : "${1?"Usage: ${FUNCNAME} INSTANCE_ID"}";
  instance_id="${1}";
  padded_id="$(printf "%04d" "${instance_id}")";
  id_path="/torrents/ids/${instance_id}";
  padded_id_path="/torrents/padded_ids/${padded_id}";
  if [ -L "${id_path}" ]; then
    original_path="$(readlink -f "${id_path}")";
    rm -rf "${id_path}";
  elif [ -L "${padded_id_path}" ]; then
    original_path="$(readlink -f "${padded_id_path}")";
    rm -rf "${padded_id_path}";
  fi
  if [ -d "${original_path}" ]; then
    domain_path="$(basename "${original_path}" | sed -e 's|^[0-9]\+||'
    rm -rf "${domain_path}";
  fi;
}
