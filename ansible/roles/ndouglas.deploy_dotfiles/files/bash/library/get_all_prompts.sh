#!/usr/bin/env bash

# All of the prompts!
nd_get_all_prompts() {
  for the_hostname in $(nd_get_all_hostnames); do
    echo "$(printf "$(nd_get_hostname_prompt "${the_hostname}")" 2> /dev/null)";
  done;
}
