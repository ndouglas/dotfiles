 #!/usr/bin/env bash

# Query the specified smart plug.
kasa_query_plug() {
  : "${1?"Usage: ${FUNCNAME} HOST"}";
  (
    set -e;
    the_host="${1}";
    the_response="$(kasa_send_plug_payload "${the_host}" "AAAAI9Dw0qHYq9+61/XPtJS20bTAn+yV5o/hh+jK8J7rh+vLtpbr" | kasa_decode_plug_response)";
    if [ ! -z "${the_response}" ]; then
      echo -n "${the_response}";
    else
      nd_fail "No response was received from the plug.";
    fi;
  )
}
