#!/usr/bin/env bash

# Wrapper for Beets.
beets_wrapper() {
  : "${1?"Usage: ${FUNCNAME[0]} CONFIG_PATH ARGUMENTS..."}";
  config_path="$(cd "${1}" && pwd)";
  docker run -it \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=America/New_York \
    -e BEETSDIR="${config_path}" \
    -v "/Music:/Music" \
    tenesmus/beets \
    beet \
    "${@:2}";
}
