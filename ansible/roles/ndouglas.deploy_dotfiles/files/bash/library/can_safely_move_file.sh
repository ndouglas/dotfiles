#!/usr/bin/env bash

# Check if we can safely move a file.
#
# Returns TRUE if the FILE has not been modified in the last MARGIN seconds,
# otherwise FALSE.
nd_can_safely_move_file() {
  : "${2?"Usage: ${FUNCNAME} FILE MARGIN"}";
  the_filename="${1}";
  the_margin="${2}";
  the_margin=$(( ${the_margin} * 60 ));
  last_modified="$(stat -c %Y "${the_filename}")";
  current_date="$(date +%s)";
  [ "$(( ${last_modified} + ${the_margin} ))" -le "${current_date}" ];
}
