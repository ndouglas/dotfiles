#!/usr/bin/env bash

# This is the local update script, expected to be executed from some machine
# that already has the dotfiles installed and deployed.

set -e;

function nd_abort() {
  : "${1?"Usage: ${FUNCNAME} MESSAGE"}";
  message="${1}";
  echo >&2 "${message}";
  exit 1;
}

nd_check_work_tree() {
  git update-index -q --ignore-submodules --refresh;
  [ -z "$(git status --porcelain=v1 2>/dev/null)" ] || nd_abort "You have unstaged or uncommitted changes.  Please commit or stash them.";
}

nd_update() {
  nd_check_work_tree;
  git pull;
  ./deploy.sh;
}

nd_update;
