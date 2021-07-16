#!/usr/bin/env bash

# Set write value for a GPIO pin.
pi_gpio_write_value() {
  : "${2?"Usage: ${FUNCNAME[0]} PIN VALUE"}";
  pin="${1}";
  value="${2}";
  gpio_root="/sys/class/gpio";
  gpio_pin_path="${gpio_root}/gpio${pin}";
  gpio_pin_value_path="${gpio_pin_path}/value";
  if [ ! -e "${gpio_pin_value_path}" ]; then
    echo "${pin}" > "${gpio_root}/export";
    echo "out" > "${gpio_pin_path}/direction";
  fi;
  echo "${value}" > "${gpio_pin_value_path}";
}
