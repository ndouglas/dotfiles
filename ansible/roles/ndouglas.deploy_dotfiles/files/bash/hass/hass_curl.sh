#!/usr/bin/env bash

# Make a raw CURL request to the Home Assistant instance.
hass_curl() {
  : "${2?"Usage: ${FUNCNAME} METHOD HOSTNAME PATH [DATA]"}";
  request_method="${1}";
  api_hostname="${2}";
  curl -X "${request_method}" "http://${api_hostname}:8123/api/${path}" "$@";
}
