#!/usr/bin/env bash

# "Underline" attribute.
ansi_underline() {
  printf '%s4m' "${ANSI_CSI}";
}
