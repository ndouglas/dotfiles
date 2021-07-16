#!/usr/bin/env bash

# This is the remote install script, expected to be executed from some machine
# that may or may not have git, Ansible, etc installed.

# Execute with the following command:
#
# /bin/bash <(curl -sL "https://raw.githubusercontent.com/ndouglas/dotfiles/main/install.sh")
#

# This has a number of dependencies.  On Debian/Ubuntu/Raspberry Pi OS, the following should
# suffice to install the dependencies:
#
# sudo apt-get update
# sudo apt-get install -y curl git python3-pip sudo ssh
# sudo pip3 install ansible
# echo "my secret password" > ~/.dotfiles_vault_password
#

# Exit as soon as we encounter an error.
set -e;

repository_remote_path="ndouglas/dotfiles.git";
repository_remote_http_url="https://github.com/${repository_remote_path}";
repository_remote_ssh_url="git@github.com:${repository_remote_path}";
repository_local_path=".dotfiles";
vault_password_path="${HOME}/.dotfiles_vault_password";
authorized_keys_path="ansible/roles/ndouglas.deploy_dotfiles/files/ssh/authorized_keys/";

nd_abort() {
  : "${1?"Usage: ${FUNCNAME[0]} MESSAGE"}";
  message="${1}";
  echo >&2 "${message}";
  exit 1;
}

nd_require() {
  : "${1?"Usage: ${FUNCNAME[0]} COMMAND"}";
  command="${1}";
  command -v "${command}" >/dev/null 2>&1 || nd_abort "I require ${command} but it is not installed.  Aborting.";
}

nd_check_requirements() {
  echo "Checking requirements...";
  nd_require ssh;
  nd_require git;
  nd_require pip3;
  nd_require ansible;
  nd_require sudo;
  [ -d "${repository_local_path}" ] && nd_abort "There is already a ${repository_local_path} directory.  We can't install here.";
  [ ! -f "${vault_password_path}" ] && nd_abort "The vault password file was not found at ${vault_password_path}.";
  echo "All requirements satisfied.";
}

nd_clone_repository() {
  echo "Cloning repository...";
  cd "$HOME";
  git clone "${repository_remote_http_url}" "${repository_local_path}";
}

nd_commit_changed_keys() {
  [ -z "$(git status --porcelain=v1 | grep "${authorized_keys_path}")" ] || {
    git add "${authorized_keys_path}";
    git commit -m "Committed new public keys.";
    git pull --quiet;
    git push --quiet;
  };
}

nd_cleanup() {
  git remote rm origin;
  git remote add origin "${repository_remote_ssh_url}";
  git fetch;
  git branch --set-upstream-to=origin/main main;
  nd_commit_changed_keys;
}

nd_install_dotfiles() {
  if [ "${USER}" != 'root' ]; then
    sudo -v;
  fi;
  nd_check_requirements;
  nd_clone_repository;
  pushd "./${repository_local_path}" > /dev/null;
  ./deploy.sh;
  nd_cleanup;
  popd > /dev/null;
}

if [[ "$(basename "${0}")" == "install.sh" ]]; then
  nd_abort "You shouldn't be running this script locally; instead use ./update.sh.";
fi;

nd_install_dotfiles;
