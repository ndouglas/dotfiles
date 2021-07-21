#!/usr/bin/env bash

# Wrapper for Beets.
beets_wrapper() {
  : "${3?"Usage: ${FUNCNAME[0]} CONFIG_PATH MUSIC_PATH PENDING_PATH ARGUMENTS..."}";
  config_path="$(cd "${1}" && pwd)";
  music_path="$(cd "${2}" && pwd)";
  pending_path="$(cd "${3}" && pwd)";
  docker run \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=America/New_York \
    -e BEETSDIR="${config_path}" \
    -v "${config_path}":"${config_path}" \
    -v "${music_path}":"${music_path}" \
    -v "${pending_path}":"${pending_path}" \
    tenesmus/beets \
    beet \
    "${@:4}";
}
