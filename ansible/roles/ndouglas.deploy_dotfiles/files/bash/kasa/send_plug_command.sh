 #!/usr/bin/env bash

# Send a command to the specified smart plug.
kasa_send_plug_command() {
  : "${2?"Usage: ${FUNCNAME} HOST COMMAND"}";
  the_host="${1}";
  the_command="${2}";
  case "${the_command}" in
    on) kasa_enable_plug "${the_host}";;
    off) kasa_disable_plug "${the_host}";;
    query) kasa_query_plug "${the_host}";;
  esac;
}
