#!/usr/bin/env bash

# Get Emoji for OS.
nd_get_os_emoji() {
  : "${1?"Usage: ${FUNCNAME} OS"}";
  the_os="${1}";
  case "${the_os}" in
    Linux*)     emoji="🐧";;
    FreeBSD*)   emoji="😈";;
    NetBSD*)    emoji="🚩";;
    OpenBSD*)   emoji="🐡";;
    Darwin*)    emoji="🍏";;
    CYGWIN*)    emoji="🟦";;
    MINGW*)     emoji="🟦";;
    *)          emoji="❓";;
  esac
  echo "$(printf "${emoji}")";
}
