#!/usr/bin/env bash

# Set the terminal title.
ansi_set_title() {
  title="${1-}";
  printf '%s2;%s%s' "$ANSI_OSC" "${title}" "$ANSI_ST";
}
