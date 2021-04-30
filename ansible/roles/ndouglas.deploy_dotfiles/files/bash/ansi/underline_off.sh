#!/usr/bin/env bash

# Remove "underline" attribute.
ansi_underline_off() {
  printf '%s24m' "${ANSI_CSI}";
}
