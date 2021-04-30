#!/usr/bin/env bash

# Move the cursor down _n_ lines.
ansi_cursor_next_line() {
  spaces="${1-}";
  printf '%s%sE' "${ANSI_CSI}" "${spaces}";
}
