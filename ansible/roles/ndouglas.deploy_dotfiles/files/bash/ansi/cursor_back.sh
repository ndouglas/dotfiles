#!/usr/bin/env bash

# Move the cursor backward _n_ spaces.
ansi_cursor_back() {
  spaces="${1-}";
  printf '%s%sD' "${ANSI_CSI}" "${spaces}";
}
