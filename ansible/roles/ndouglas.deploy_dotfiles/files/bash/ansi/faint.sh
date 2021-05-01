#!/usr/bin/env bash

# "Faint" attribute.
ansi_faint() {
  printf '%s2m' "${ANSI_CSI}";
}
