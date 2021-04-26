#!/usr/bin/env bash

# Get the current value for a GPIO pin.
pi_gpio_read_value() {
  : "${1?"Usage: ${FUNCNAME} PIN"}";
  pin="${1}";
  gpio_root="/sys/class/gpio";
  gpio_pin_path="${gpio_root}/gpio${pin}";
  gpio_pin_value_path="${gpio_pin_path}/value";
  if [ -e "${gpio_pin_value_path}" ]; then
    cat "${gpio_pin_value_path}";
  else
    echo 0;
  fi;
}
