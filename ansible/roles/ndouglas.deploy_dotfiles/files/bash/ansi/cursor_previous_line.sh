#!/usr/bin/env bash

# Move the cursor up _n_ lines.
ansi_cursor_previous_line() {
  spaces="${1-}";
  printf '%s%sF' "${ANSI_CSI}" "${spaces}";
}
