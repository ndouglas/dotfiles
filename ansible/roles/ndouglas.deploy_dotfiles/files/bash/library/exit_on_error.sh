#!/usr/bin/env bash

# Exit when we encounter an error.
nd_exit_on_error() {
  : "${1?"Usage: ${FUNCNAME} EXIT_CODE COMMAND"}";
  exit_code="${1}";
  last_command="${@:2}";
  if [ "${exit_code}" -ne 0 ]; then
    echo "\"${last_command}\" failed with exit code ${exit_code}." >&2;
    exit "${exit_code}";
  fi;
}
