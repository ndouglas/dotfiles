#!/usr/bin/env bash

# Deploy an instance of Transmission to handle a torrent's announce domain.
torrent_deploy_next_instance() {
  : "${1?"Usage: ${FUNCNAME} SAFE_DOMAIN|TORRENT_FILE"}";
  torrent_file="${1}";
  if [ -f "${torrent_file}" ]; then
    torrent_deploy_next_instance "$(torrent_get_safe_announce_domain "${torrent_file}")";
  else
    instance_domain="${1}";
    torrent_deploy_instance "$(torrent_get_next_client_id)" "${instance_domain}";
  fi;
}
