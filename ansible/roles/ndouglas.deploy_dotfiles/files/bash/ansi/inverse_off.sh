#!/usr/bin/env bash

# Remove "inverse" attribute.
ansi_inverse_off() {
  printf '%s27m' "${ANSI_CSI}";
}
