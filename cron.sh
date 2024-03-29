#!/usr/bin/env bash

# A wrapper for update.sh that should be executed from cron.

set -e;

directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)";
pushd "${directory}" > /dev/null;
git fetch --quiet;
if [ $(git rev-parse HEAD) != $(git rev-parse @{u}) ]; then
  ./update.sh > "${directory}"/.last_log;
  TZ='America/New_York' date +'%Y-%m-%d %H:%M:%S' > "${directory}"/.last_updated;
fi;
TZ='America/New_York' date +'%Y-%m-%d %H:%M:%S' > "${directory}"/.last_checked;
