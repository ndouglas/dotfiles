#!/usr/bin/env bash

# Retrieve the session ID from a local instance of Transmission.
torrent_get_session_id() {
  : "${1?"Usage: ${FUNCNAME} SAFE_DOMAIN"}";
  safe_domain="${1}";
  curl --silent "$(torrent_get_domain_rpc_url "${safe_domain}")" \
    | grep -oE "X-Transmission-Session-Id: ([^<]*)";
}
