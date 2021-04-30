#!/usr/bin/env bash

# Move the cursor down _n_ spaces.
ansi_cursor_down() {
  spaces="${1-}";
  printf '%s%sB' "${ANSI_CSI}" "${spaces}";
}
