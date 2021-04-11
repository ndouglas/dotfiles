#!/usr/bin/env bash

# The suffix, styled appropriately.
nd_get_prompt_suffix() {
  echo "$(printf "\[$(tput sgr0)$(tput bold)\]\$\[$(tput sgr0)\] ")";
}
