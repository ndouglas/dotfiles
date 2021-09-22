#!/usr/bin/env bash

# Pad a string.
nd_pad_string() {
  : "${2?"Usage: ${FUNCNAME[0]} WIDTH STRING"}";
  width="${1}";
  string="${2}";
  bytes="$(printf '%s' "${string}" | wc -c)";
  chars="$(printf '%s' "${string}" | wc -m)";
  n=$(( $width + bytes - chars ));
  printf "%${n}s" "$2";
}


