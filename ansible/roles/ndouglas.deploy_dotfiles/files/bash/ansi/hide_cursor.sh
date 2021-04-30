#!/usr/bin/env bash

# Show the cursor.
ansi_hide_cursor() {
  printf '%s?25l' "${ANSI_CSI}";
}
