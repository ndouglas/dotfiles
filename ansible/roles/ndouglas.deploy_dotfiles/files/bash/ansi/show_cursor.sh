#!/usr/bin/env bash

# Show the cursor.
ansi_show_cursor() {
  printf '%s?25h' "${ANSI_CSI}";
}
