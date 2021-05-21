#!/usr/bin/env bash

# Post a TriggerHappy event.
hass_post_triggerhappy_event() {
  : "${1?"Usage: ${FUNCNAME} KEYCODE"}";
  keycode="${1}";
  hass_curl POST 'events/nd_triggerhappy' -d '{"attributes": {"keycode": "'"${keycode}"'"}}';
}
