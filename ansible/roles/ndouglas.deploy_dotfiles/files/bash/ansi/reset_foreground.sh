#!/usr/bin/env bash

# Reset foreground.
ansi_reset_foreground() {
  printf '%s39m' "${ANSI_CSI}";
}
