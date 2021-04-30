#!/usr/bin/env bash

# Reset text attributes.
ansi_reset_attributes() {
  printf '%s22;23;24;25;27;28;29;54;55m' "${ANSI_CSI}";
}
