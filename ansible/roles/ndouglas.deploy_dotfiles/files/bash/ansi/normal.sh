#!/usr/bin/env bash

# Neither "faint" nor "bold" attribute.
ansi_normal() {
  printf '%s22m' "${ANSI_CSI}";
}
