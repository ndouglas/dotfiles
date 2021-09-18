#!/usr/bin/env bash

# Recreate a Proxmox VE host.
pve_recreate_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  host="${1}";
  pve_stop_host "${host}";
  pve_remove_host "${host}";
  pve_create_host "${host}";
}
