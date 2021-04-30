#!/usr/bin/env bash

# Move the cursor up _n_ spaces.
ansi_cursor_up() {
  spaces="${1-}";
  printf '%s%sA' "${ANSI_CSI}" "${spaces}";
}
