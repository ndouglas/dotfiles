#!/usr/bin/env bash

# The kind of prompt we want.
nd_get_prompt() {
  : "${3?"Usage: ${FUNCNAME} HOSTNAME PRIMARY_COLOR SECONDARY_COLOR TERTIARY_COLOR"}";
  the_hostname="${1}";
  the_primary_color="${2}";
  the_secondary_color="${3}";
  the_tertiary_color="${4}";
  the_emoji="$(nd_get_hostname_emoji "${the_hostname}")";
  the_username="$(nd_get_prompt_username "${the_primary_color}")";
  the_atsign="$(nd_get_prompt_atsign)";
  the_hostname="$(nd_get_prompt_hostname "${the_secondary_color}")";
  the_colon="$(nd_get_prompt_colon)";
  the_path="$(nd_get_prompt_path "${the_tertiary_color}")";
  the_suffix="$(nd_get_prompt_suffix)";
  echo "$(printf "${the_emoji}${the_username}${the_atsign}${the_hostname}${the_colon}${the_path}${the_suffix}")";
}
