#!/usr/bin/env bash

# "Strikethrough" attribute.
ansi_strikethrough() {
  printf '%s9m' "${ANSI_CSI}";
}
