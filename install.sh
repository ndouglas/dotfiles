#!/usr/bin/env bash

# This is the remote install script, expected to be executed from some machine
# that may or may not have git, Ansible, etc installed.

# Execute with the following command:
#
# /bin/bash <(curl -sL "https://raw.githubusercontent.com/ndouglas/dotfiles/main/install.sh")
#

if [ "${1}" == "--dry-run" ]; then
  dry_run=1;
fi;

# Exit as soon as we encounter an error.
set -e;

function nd_abort() {
  : "${1?"Usage: ${FUNCNAME} MESSAGE"}";
  message="${1}";
  echo >&2 "${message}";
  exit 1;
}

function nd_require() {
  : "${1?"Usage: ${FUNCNAME} COMMAND"}";
  command="${1}";
  command -v "${command}" >/dev/null 2>&1 || nd_abort "I require ${command} but it is not installed.  Aborting.";
}

function nd_check_requirements() {
  echo "Checking requirements...";
  nd_require git;
  nd_require ansible;
  echo "All requirements satisfied.";
}

function nd_install_dotfiles() {
  nd_check_requirements;
}

nd_install_dotfiles;
