 #!/usr/bin/env bash

# Get the state of the specified smart plug.
kasa_get_plug_state() {
  : "${1?"Usage: ${FUNCNAME} HOST"}";
  the_host="${1}";
  the_response="$(kasa_query_plug "${the_host}")";
  the_state="$(echo -n "${the_response}" | tr -cd '\11\12\15\40-\176' | egrep -o 'relay_state":[0,1]' | egrep -o '[0,1]')";
  case "${the_state}" in
    0) echo 'OFF';;
    1) echo 'ON';;
    *) nd_fail "Could not understand the response: ${the_response}";;
  esac;
}
