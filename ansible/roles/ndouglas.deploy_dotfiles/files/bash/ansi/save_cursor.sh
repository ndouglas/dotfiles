#!/usr/bin/env bash

# Save the cursor.
ansi_save_cursor() {
  printf '%ss' "${ANSI_CSI}";
}
