#!/usr/bin/env bash

# Edit the vault.
ans_edit_vault() {
  : "${1?"Usage: ${FUNCNAME} VAULT_PATH"}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-vault edit "${1}";
  popd > /dev/null;
}
