#!/usr/bin/env bash

# Erase a display completely.
ansi_erase_display() {
  display="${1-}";
  printf '%s%sJ' "${ANSI_CSI}" "${display}";
}
