#!/usr/bin/env bash

# The kind of colon we'd like to use in a prompt.
nd_get_prompt_colon() {
  echo "$(printf "\[$(tput sgr0)$(tput bold)\]:\[$(tput sgr0)\]")";
}
