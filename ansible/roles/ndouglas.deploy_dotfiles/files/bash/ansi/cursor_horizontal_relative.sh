#!/usr/bin/env bash

# Move the cursor by _n_ columns.
ansi_cursor_horizontal_relative() {
  offset="${1-}";
  printf '%s%sa' "${ANSI_CSI}" "${offset}";
}
