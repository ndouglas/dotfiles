#!/usr/bin/env bash

# This is the deploy script, which should be executed from a machine with the
# relevant prerequisites and so forth installed.

set -e;
script_path="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )";
pushd "${script_path}/ansible" > /dev/null;
ansible-galaxy install -r requirements.yml;
ansible-playbook ./playbooks/deploy_dotfiles.yaml -v "${@}";
popd > /dev/null;
