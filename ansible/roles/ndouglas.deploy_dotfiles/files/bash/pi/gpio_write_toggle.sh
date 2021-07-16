#!/usr/bin/env bash

# Toggle write value for a GPIO pin.
pi_gpio_write_toggle() {
  : "${1?"Usage: ${FUNCNAME[0]} PIN"}";
  pin="${1}";
  gpio_root="/sys/class/gpio";
  gpio_pin_path="${gpio_root}/gpio${pin}";
  current_value="$(pi_gpio_get_value "${pin}")";
  if [ "${current_value}" -ne 0 ]; then
    new_value="0";
  else
    new_value="1";
  fi;
  pi_gpio_write_value "${pin}" "${new_value}";
}
