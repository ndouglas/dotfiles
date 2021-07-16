#!/usr/bin/env bash

# Set high write for a GPIO pin.
pi_gpio_write_high() {
  : "${1?"Usage: ${FUNCNAME[0]} PIN"}";
  pin="${1}";
  pi_gpio_write_value "${pin}" 1;
}
