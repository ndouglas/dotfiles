#!/usr/bin/env bash

# This is the local update script, expected to be executed from some machine
# that already has the dotfiles installed and deployed.

set -e;

authorized_keys_path="ansible/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/";

nd_abort() {
  : "${1?"Usage: ${FUNCNAME} MESSAGE"}";
  message="${1}";
  echo >&2 "${message}";
  exit 1;
}

nd_check_work_tree() {
  git update-index -q --ignore-submodules --refresh;
  [ -z "$(git status --porcelain=v1 2>/dev/null)" ] || nd_abort "You have unstaged or uncommitted changes.  Please commit or stash them.";
}

nd_commit_changed_keys() {
  [ -z "$(git status --porcelain=v1 | grep "${authorized_keys_path}")" ] || {
    git add "${authorized_keys_path}";
    git commit -m "Committed new public keys.";
    git push --quiet;
  };
}

nd_update() {
  nd_commit_changed_keys;
  nd_check_work_tree;
  git pull --quiet;
  git push --quiet;
  ./deploy.sh;
  nd_commit_changed_keys;
}

nd_update;
