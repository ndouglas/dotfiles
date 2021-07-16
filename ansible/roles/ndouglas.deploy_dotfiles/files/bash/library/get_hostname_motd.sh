#!/usr/bin/env bash

# Get MOTD for hostname.
nd_get_hostname_motd() {
  : "${1?"Usage: ${FUNCNAME[0]} HOSTNAME"}";
  the_hostname="${1}";
  curl -L "${MOTD_BASE_URL}/${the_hostname}.txt";
}

