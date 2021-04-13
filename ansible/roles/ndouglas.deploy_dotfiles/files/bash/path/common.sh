#!/usr/bin/env bash

# A list of common paths that might not be in the PATH already.
common_paths=(
  '/usr/local/sbin'
)

for common_path in "${common_paths[@]}"; do
  if [[ ! "${PATH}" =~ (^|:)"${common_path}"(:|$) ]] && [ -d "${common_path}" ]; then
    PATH="${PATH}:${common_path}";
  fi
done
