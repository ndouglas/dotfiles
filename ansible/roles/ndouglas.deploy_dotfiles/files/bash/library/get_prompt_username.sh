#!/usr/bin/env bash

# The username, styled appropriately.
nd_get_prompt_username() {
  : "${1?"Usage: ${FUNCNAME} COLOR"}";
  the_color="${1}";
  echo "$(printf "\[$(tput sgr0)$(tput bold)\]${the_color}\u\[$(tput sgr0)\]" 2> /dev/null)";
}
