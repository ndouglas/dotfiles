#!/usr/bin/env bash

# Reset background.
ansi_reset_background() {
  printf '%s49m' "${ANSI_CSI}";
}
