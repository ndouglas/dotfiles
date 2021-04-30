#!/usr/bin/env bash

# Restore the cursor.
ansi_restore_cursor() {
  printf '%su' "${ANSI_CSI}";
}
