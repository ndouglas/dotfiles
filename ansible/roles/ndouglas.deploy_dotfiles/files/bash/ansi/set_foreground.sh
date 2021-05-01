#!/usr/bin/env bash

# Set the foreground color.
ansi_set_foreground() {
  : "${1?"Usage: ${FUNCNAME} COLOR [--intense]"}";
  intensity=30;
  color='white';
  while [ "$#" -gt 0 ]; do
    case "$1" in
      --intense )
        intensity=90;
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
