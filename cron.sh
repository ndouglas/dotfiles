#!/usr/bin/env bash

# A wrapper for update.sh that should be executed from cron.

set -e;

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)";
pushd "${directory}" > /dev/null;
./update.sh > "${directory}"/.last_log;
date +'%Y-%m-%d %H:%M:%S' > "${directory}"/.last_updated;
