#!/usr/bin/env bash

# Edit the vault.
ans_edit_vault() {
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-vault edit "${1:-inventory/group_vars/all/vault}";
  popd > /dev/null;
}
