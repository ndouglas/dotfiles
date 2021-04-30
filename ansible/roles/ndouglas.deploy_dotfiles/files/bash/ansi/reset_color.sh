#!/usr/bin/env bash

# Reset text color.
ansi_reset_color() {
  printf '%s0m' "${ANSI_CSI}";
}
