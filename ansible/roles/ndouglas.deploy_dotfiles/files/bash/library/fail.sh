#!/usr/bin/env bash

# Fail with some error message.
nd_fail() {
  : "${1?"Usage: ${FUNCNAME[0]} MESSAGE"}";
  message="${1}";
  : "${__nd_fail:?"${message}"}";
}
