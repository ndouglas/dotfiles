#!/usr/bin/env bash

# Move the cursor forward _n_ spaces.
ansi_cursor_forward() {
  spaces="${1-}";
  printf '%s%sC' "${ANSI_CSI}" "${spaces}";
}
