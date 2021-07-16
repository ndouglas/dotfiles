 #!/usr/bin/env bash

# Describe the status of this plug.
kasa_describe_plug() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  the_host="${1}";
  kasa_query_plug "${the_host}" | jq;
}
