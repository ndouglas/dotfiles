#!/usr/bin/env bash

# Reset text font.
ansi_reset_font() {
  printf '%s10m' "${ANSI_CSI}";
}
