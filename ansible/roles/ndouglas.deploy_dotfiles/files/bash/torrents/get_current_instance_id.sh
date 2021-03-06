#!/usr/bin/env bash

# Retrieve the numeric instance ID for an instance for the specified torrent
# Returns -1 if not found.
torrent_get_current_instance_id() {
  : "${1?"Usage: ${FUNCNAME[0]} TORRENT_FILE|DOMAIN"}";
  torrent_file="${1}";
  if [ -f "${torrent_file}" ]; then
    torrent_get_current_instance_id "$(torrent_get_safe_announce_domain "${torrent_file}")";
  else
    safe_domain="${1}";
    safe_domain_path="/torrents/domains/${safe_domain}";
    if [ -L "${safe_domain_path}" ]; then
      original="$(readlink -f "${safe_domain_path}")";
      basename "${original}" | grep -oE '[0-9]+' | bc;
    else
      return 255;
    fi;
  fi
}
