#!/usr/bin/env bash

# A list of common paths that might not be in the PATH already.
common_paths=(
  '/usr/local/bin'
  '/usr/local/sbin'
  "$HOME/python3/bin"
)

for common_path in "${common_paths[@]}"; do
  if [[ ! "${PATH}" =~ (^|:)"${common_path}"(:|$) ]] && [ -d "${common_path}" ]; then
    PATH="${common_path}:${PATH}";
  fi
done
