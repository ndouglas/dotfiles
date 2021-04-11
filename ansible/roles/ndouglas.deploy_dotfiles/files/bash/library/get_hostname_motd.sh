#!/usr/bin/env bash

# Get MOTD for hostname.
nd_get_hostname_motd() {
  : "${1?"Usage: ${FUNCNAME} HOSTNAME"}";
  the_hostname="${1}";
  curl -L "https://raw.githubusercontent.com/ndouglas/asoiaf-noble-house-images/master/utf8/40/${the_hostname}.txt";
}

