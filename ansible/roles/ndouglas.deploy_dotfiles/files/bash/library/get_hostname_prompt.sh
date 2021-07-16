#!/usr/bin/env bash

# Get a specific prompt.
nd_get_hostname_prompt() {
  : "${1?"Usage: ${FUNCNAME[0]} HOSTNAME"}";
  the_hostname="${1}";
  the_primary_color="$(nd_get_hostname_primary_color "${the_hostname}")";
  the_secondary_color="$(nd_get_hostname_secondary_color "${the_hostname}")";
  the_tertiary_color="$(nd_get_hostname_tertiary_color "${the_hostname}")";
  echo "$(nd_get_prompt "${the_hostname}" "${the_primary_color}" "${the_secondary_color}" "${the_tertiary_color}" 2>/dev/null)";
}
