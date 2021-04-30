#!/usr/bin/env bash

# "Inverse" attribute.
ansi_inverse() {
  printf '%s7m' "${ANSI_CSI}";
}
