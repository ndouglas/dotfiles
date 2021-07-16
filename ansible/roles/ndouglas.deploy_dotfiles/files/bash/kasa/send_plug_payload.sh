 #!/usr/bin/env bash

# Send a payload to the specified smart plug.
kasa_send_plug_payload() {
  : "${2?"Usage: ${FUNCNAME[0]} HOST PAYLOAD"}";
  the_host="${1}";
  the_payload="${2}";
  echo -n "${the_payload}" | base64 --decode | nc "${the_host}" 9999;
}
