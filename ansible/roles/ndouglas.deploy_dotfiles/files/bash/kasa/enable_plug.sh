 #!/usr/bin/env bash

# Enable the specified smart plug.
kasa_enable_plug() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  the_host="${1}";
  kasa_send_plug_payload "${the_host}" "AAAAKtDygfiL/5r31e+UtsWg1Iv5nPCR6LfEsNGlwOLYo4HyhueT9tTu36Lfog==";
}
