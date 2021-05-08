 #!/usr/bin/env bash

# Retrieve the "safe" (alphanumeric) domain of the announce URL of a specified torrent file.
torrent_get_safe_announce_domain() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  torrent_file="${1}"
  torrent_get_announce_domain "${torrent_file}" | tr -cd '[:alnum:]';
}
