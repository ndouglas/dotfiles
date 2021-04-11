#!/usr/bin/env bash

# Require all of the specified commands to be executable in the current context
# or else fail in disgrace.
#
# Note that this shouldn't be used to check for builtins, functions, etc.
nd_require_commands() {
  for i in "${@}"; do
    if ! hash "${i}" 2>/dev/null; then
      nd_fail "Command \"${i}\" is a prerequisite for this function.";
      return;
    fi;
  done;
}
