#!/usr/bin/env bash

# The path, styled appropriately.
nd_get_prompt_path() {
  : "${1?"Usage: ${FUNCNAME} COLOR"}";
  the_color="${1}";
  echo "$(printf "\[$(tput sgr0)$(tput bold)\]${the_color}\w\[$(tput sgr0)\]")";
}
