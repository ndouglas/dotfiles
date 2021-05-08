#!/usr/bin/env bash

# Retrieve the RPC URL for a specified instance of Transmission.
torrent_get_domain_rpc_url() {
  : "${1?"Usage: ${FUNCNAME} SAFE_DOMAIN"}";
  safe_domain="${1}";
  echo "https://$(torrent_get_domain_fqdn "${safe_domain}"):443/transmission/rpc/";
}
