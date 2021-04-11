#!/usr/bin/env bash

# Create a new SSH key.
nd_get_new_ssh_key() {
  ssh_hostname="$(nd_get_hostname)";
  ssh_email="nathan@${ssh_hostname}";
  ssh-keygen -b 4096 -t rsa -f "${HOME}/.ssh/id_rsa" -q -N "" -C "${ssh_email}";
  cat "${HOME}/.ssh/id_rsa.pub" >> "${HOME}/.ssh/authorized_keys";
}
