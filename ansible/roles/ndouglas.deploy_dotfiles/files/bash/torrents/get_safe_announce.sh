 #!/usr/bin/env bash

# Retrieve the (subdomain-friendly) tracker of a specified torrent file.
torrent_get_safe_announce() {
  : "${1?"Usage: ${FUNCNAME} FILE"}";
  torrent_file="${1}"
  torrent_get_announce "${torrent_file}" | tr -cd '[:alnum:]';
}
