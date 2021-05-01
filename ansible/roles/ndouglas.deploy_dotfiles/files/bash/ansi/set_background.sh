#!/usr/bin/env bash

# Set the background color.
ansi_set_background() {
  : "${1?"Usage: ${FUNCNAME} COLOR [--intense]"}";
  intensity=40;
  color='black';
  while [ "$#" -gt 0 ]; do
    case "$1" in
      --intense )
        intensity=100;
        ;;
      * )
        color="${1}";
        ;;
    esac;
    shift;
  done;
  index="$(ansi_get_color_index "${color}")";
  (( number = index + intensity ));
  printf "%s${number}m" "${ANSI_CSI}";
}
