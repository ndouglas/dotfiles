#!/usr/bin/env bash

# Assigns a torrent to an appropriate instance.
torrent_assign_torrent() {
  : "${1?"Usage: ${FUNCNAME} TORRENT_FILE"}";
  torrent_file="${1}";
  best_instance_id="$(torrent_get_best_instance_id "${torrent_file}")";
  if [ "${best_instance_id}" -eq "-1" ]; then
    torrent_deploy_next_instance "${torrent_file}";
    best_instance_id="$(torrent_get_best_instance_id "${torrent_file}")";
    if [ "${best_instance_id}" -eq "-1" ]; then
      echo "Unable to find or create an appropriate instance for ${torrent_file} ." >&2;
      return -1;
    fi
  fi
  torrent_domain="$(torrent_get_safe_announce_domain "${torrent_file}")";
  best_instance_name="$(torrent_get_best_instance "${torrent_domain}")";
  best_instance_path="/torrents/clients/${best_instance_name}/watch";
  if [ -d "${best_instance_path}" ]; then
    mv "${torrent_file}" "${best_instance_path}/";
  fi;
}
