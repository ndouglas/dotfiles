#!/usr/bin/env bash

# The kind of at-sign we'd like to use in a prompt.
nd_get_prompt_atsign() {
  echo "$(printf "\[$(tput sgr0)$(tput bold)\]@\[$(tput sgr0)\]")";
}
