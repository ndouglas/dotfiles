#!/usr/bin/env bash

# Print a report of all missing comics.
cmx_get_missing_comics_report() {
  : "${1?"Usage: ${FUNCNAME} DIRECTORY"}";
  the_directory="${1}";
  IFS=$'\n' read -rd '' -a the_subdirectories <<< "$(nd_list_directories "${the_directory}")";
  for index in ${!the_subdirectories[@]}; do
    the_subdirectory="${the_subdirectories[${index}]}";
    directory_name="$(basename "${the_subdirectory}")";
    directory_file_count="$(ls "${the_subdirectory}"/*.cbz | wc -l)";
    if [ "${directory_file_count}" -gt 1 ]; then
      IFS=$'\n' read -rd '' -a missing_issue_numbers <<< "$(cmx_get_missing_issue_numbers "${the_subdirectory}")";
      missing_issue_count="${#missing_issue_numbers[@]}";
      if [ "${missing_issue_count}" -ge 1 ]; then
        echo "${directory_name}": "${missing_issue_numbers[@]}";
      fi;
    fi;
  done;
}
