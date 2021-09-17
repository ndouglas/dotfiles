#!/usr/bin/env bash

# Preview a specific prompt.
nd_preview_hostname_prompt() {
  : "${1?"Usage: ${FUNCNAME[0]} HOSTNAME [USER] [PATH]"}";
  the_hostname="${1}";
  the_user="${2:-$(whoami)}";
  the_path="${3:-~}";
  the_emoji="$(tput bold)$(nd_get_hostname_emoji "${the_hostname}")";
  the_primary_color="$(tput bold)$(nd_get_hostname_primary_color "${the_hostname}")";
  the_secondary_color="$(tput bold)$(nd_get_hostname_secondary_color "${the_hostname}")";
  the_tertiary_color="$(tput bold)$(nd_get_hostname_tertiary_color "${the_hostname}")";
  the_atsign="$(printf "$(tput bold)$(tput sgr0)$(tput bold)@$(tput sgr0)")";
  the_colon="$(printf "$(tput bold)$(tput sgr0)$(tput bold):$(tput sgr0)")";
  the_suffix="$(printf "$(tput sgr0)$(tput bold)\$$(tput sgr0) ")";
  printf "${the_emoji}${the_primary_color}${the_user}${the_atsign}${the_secondary_color}${the_hostname}${the_colon}${the_tertiary_color}${the_path}${the_suffix}" 2>/dev/null;
}
