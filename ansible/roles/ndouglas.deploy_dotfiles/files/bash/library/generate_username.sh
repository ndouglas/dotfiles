#!/usr/bin/env bash

# Generate a randomized, obscure username.
nd_generate_username() {
  if [ -f /usr/share/dict/words ] && [ -x "$(command -v shuf)" ]; then
    the_word="$(shuf -n1 /usr/share/dict/words)";
    suffix="$(echo "$(date +%N) $RANDOM" | sha256sum | head -c 3)";
    echo "${the_word}${suffix}" | tr '[:upper:]' '[:lower:]';
  else
    echo "$(date +%N) $RANDOM" | sha256sum | base64;
  fi;
}
