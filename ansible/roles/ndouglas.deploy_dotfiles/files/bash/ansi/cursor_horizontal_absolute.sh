#!/usr/bin/env bash

# Move the cursor to the _n_ column.
ansi_cursor_horizontal_absolute() {
  column="${1-}";
  printf '%s%sG' "${ANSI_CSI}" "${column}";
}
