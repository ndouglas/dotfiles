#!/usr/bin/env bash

# Turn text bold.
ansi_bold() {
  printf '%s1m' "${ANSI_CSI}";
}
