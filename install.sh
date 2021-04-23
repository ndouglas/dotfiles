#!/usr/bin/env bash

# This is the remote install script, expected to be executed from some machine
# that may or may not have git, Ansible, etc installed.

# Execute with the following command:
#
# /bin/bash <(curl -sL "https://raw.githubusercontent.com/ndouglas/dotfiles/main/install.sh")
#

# Exit as soon as we encounter an error.
set -e;

repository_remote_path="ndouglas/dotfiles.git";
repository_remote_http_url="https://github.com/${repository_remote_path}";
repository_remote_ssh_url="git@github.com:${repository_remote_path}";
repository_local_path=".dotfiles";
vault_password_path="${HOME}/.dotfiles_vault_password";

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
  nd_require ssh;
  nd_require git;
  nd_require pip3;
  nd_require ansible;
  [ -d "${repository_local_path}" ] && nd_abort "There is already a ${repository_local_path} directory.  We can't install here.";
  [ ! -f "${vault_password_path}" ] && nd_abort "The vault password file was not found at ${vault_password_path}.";
  echo "All requirements satisfied.";
}

function nd_clone_repository() {
  echo "Cloning repository...";
  git clone "${repository_remote_ssh_url}" "${repository_local_path}";
}

function nd_cleanup() {
  git remote rm origin;
  git remote add origin "${repository_remote_ssh_url}";
  git fetch;
  git branch --set-upstream-to=origin/main main;
}

function nd_install_dotfiles() {
  nd_check_requirements;
  nd_clone_repository;
  pushd "./${repository_local_path}" > /dev/null;
  ./deploy.sh;
  nd_cleanup;
  popd > /dev/null;
}

nd_install_dotfiles;
