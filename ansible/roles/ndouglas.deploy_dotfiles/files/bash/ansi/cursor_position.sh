#!/usr/bin/env bash

# Move the cursor to the position _x_, _y_.
ansi_cursor_position() {
  position="${1-}";
  printf '%s%sH' "${ANSI_CSI}" "${column/,/;}";
}
