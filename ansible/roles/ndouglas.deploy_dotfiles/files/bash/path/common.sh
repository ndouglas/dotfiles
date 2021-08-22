#!/usr/bin/env bash

# A list of common paths that might not be in the PATH already.
common_paths=(
  "$HOME/.cargo/bin"
  "$HOME/.local/bin"
  "$HOME/bin"
  "$HOME/python3/bin"
  '/usr/local/bin'
  '/usr/local/sbin'
  './bin'
  './scripts'
)

for common_path in "${common_paths[@]}"; do
  if [[ ! "${PATH}" =~ (^|:)"${common_path}"(:|$) ]] && [ -d "${common_path}" ]; then
    PATH="${common_path}:${PATH}";
  fi
done
