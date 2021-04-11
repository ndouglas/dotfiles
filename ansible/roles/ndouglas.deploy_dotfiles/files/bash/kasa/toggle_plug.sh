 #!/usr/bin/env bash

# Toggle the specified smart plug.
kasa_toggle_plug() {
  : "${2?"Usage: ${FUNCNAME} HOST COMMAND"}";
  the_host="${1}";
  (
    set -e;
    the_state="$(kasa_get_plug_state "${the_host}")";
    case "${the_state}" in
      ON) kasa_disable_plug "${the_host}";;
      OFF) kasa_enable_plug "${the_host}";;
      *) nd_fail "Could not understand plug state: ${the_state}";;
    esac;
  )
}
