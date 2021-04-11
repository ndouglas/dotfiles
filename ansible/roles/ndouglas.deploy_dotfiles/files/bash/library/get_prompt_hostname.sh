#!/usr/bin/env bash

# The hostname, styled appropriately.
nd_get_prompt_hostname() {
  : "${1?"Usage: ${FUNCNAME} COLOR"}";
  the_color="${1}";
  echo -e "$(printf "\[$(tput sgr0)$(tput bold)\]${the_color}\h\[$(tput sgr0)\]")";
}
