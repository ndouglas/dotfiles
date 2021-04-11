#!/usr/bin/env bash

# Timeout a command after some number of seconds.
function nd_timeout() {
  : "${2?"Usage: ${FUNCNAME} TIMEOUT COMMAND..."}";
  timeout="${1}";
  command="${@:2}";
  (
    eval "${command[@]}" &
    child=$!;
    echo "child: $child";
    trap -- "" SIGTERM;
    (
      sleep "$timeout";
      echo "Timing out..." >&2;
      kill "$child" 2> /dev/null;
    ) &
    wait "$child";
  );
}
