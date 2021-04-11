#!/usr/bin/env bash

# Prints the missing issue numbers of a collection.
cmx_get_missing_issue_numbers() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  first_issue_number="$(cmx_get_first_issue_number "${the_directory}")";
  last_issue_number="$(cmx_get_last_issue_number "${the_directory}")";
  IFS=$'\n' read -rd '' -a all_issue_numbers <<< "$(cmx_get_issue_numbers "${the_directory}")";
  cmx_get_intervening_issue_numbers 0 "${first_issue_number}";
  count="${#all_issue_numbers[@]}";
  for index in ${!all_issue_numbers[@]}; do
    if [ "${index}" -lt "${count}" ]; then
      next_index=$(( index + 1 ));
      this_issue_number="${all_issue_numbers[${index}]}";
      next_issue_number="${all_issue_numbers[${next_index}]}";
      cmx_get_intervening_issue_numbers "${this_issue_number}" "${next_issue_number}";
    fi;
  done;
}
