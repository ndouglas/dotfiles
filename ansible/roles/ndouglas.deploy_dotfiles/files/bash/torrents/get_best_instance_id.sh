#!/usr/bin/env bash

# Retrieve the numeric instance ID for an instance for the specified torrent
# Returns -1 if not found.
torrent_get_best_instance_id() {
  : "${1?"Usage: ${FUNCNAME[0]} TORRENT_FILE|DOMAIN"}";
  torrent_file="${1}";
  if [ -f "${torrent_file}" ]; then
    torrent_get_best_instance_id "$(torrent_get_safe_announce_domain "${torrent_file}")";
  else
    safe_domain="${1}";
    current_instance_id="$(torrent_get_current_instance_id "${safe_domain}")";
    if [ "$?" -eq "255" ]; then
      return 255;
    fi
    total_count="$(torrent_get_total_torrent_count "${safe_domain}")";
    if [ "${total_count}" -ge "1000" ]; then
      return 255;
    fi;
    echo "${current_instance_id}";
  fi
}
