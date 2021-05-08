#!/usr/bin/env bash

# Make an RPC request to a specific site.
torrent_make_rpc_request() {
  : "${2?"Usage: ${FUNCNAME} SAFE_DOMAIN DATA"}";
  safe_domain="${1}";
  data="${2}";
  session_id_header="$(torrent_get_session_id "${safe_domain}")";
  curl \
    --silent \
    --header "${session_id_header}" \
    --header "Content-Type: application/json" \
    --request POST \
    --data "${data}" \
    "$(get_domain_rpc_url "${safe_domain}")";
}
