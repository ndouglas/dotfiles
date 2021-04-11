#!/usr/bin/env bash

# Prints the intervening issue numbers of a collection.
cmx_get_intervening_issue_numbers() {
  : "${2?"Usage: ${FUNCNAME} NUMBER_X NUMBER_Y"}";
  start_number=$(( ${1} + 1 ));
  end_number=$(( ${2} - 1 ));
  if [ "${start_number}" -gt "${end_number}" ]; then
    return;
  fi;
  difference=$(( ${end_number} - ${start_number} ));
  if [ "${difference}" -ge 100 ]; then
    return;
  elif [ "${difference}" -eq 0 ]; then
    echo "${start_number}";
  elif [ "${difference}" -eq 1 ]; then
    echo "${start_number} ${end_number}";
  else
    echo "${start_number}-${end_number}";
  fi;
}
