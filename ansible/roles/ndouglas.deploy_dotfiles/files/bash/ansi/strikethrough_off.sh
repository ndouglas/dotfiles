#!/usr/bin/env bash

# Remove "strikethrough" attribute.
ansi_strikethrough_off() {
  printf '%s29m' "${ANSI_CSI}";
}
