#!/usr/bin/env bash

# Set up a Proxmox node.
pve_setup_node() {
  : "${1?"Usage: ${FUNCNAME} HOST"}";
  host="${1}";
  pushd "${DOTFILES_ANSIBLE_PATH}" >> /dev/null;
  ansible-playbook \
    --extra-vars="ansible_connection=ssh ansible_ssh_user=root" \
    /dev/stdin <<END
---
- hosts: "${host}"
  tasks:

    - name: 'Set some important facts...'
      ansible.builtin.set_fact:
        ansible_connection: 'ssh'
        ansible_ssh_user: 'root'

    - name: 'Install Apt packages.'
      ansible.builtin.apt:
        name: "{{ item }}"
        update_cache: yes
      loop:
        - 'curl'
        - 'python3'
        - 'python3-pip'
        - 'rsync'
        - 'sudo'

    - name: 'Install Pip packages.'
      ansible.builtin.pip:
        name: "{{ item }}"
      loop:
        - 'ansible'
        - 'proxmoxer'
        - 'requests'

    - name: 'Enable kernel modules.'
      ansible.builtin.copy:
        content: "{{ item }}"
        dest: "/etc/modules-load.d/{{ item }}.conf"
      loop:
        - 'aufs'
        - 'br_netfilter'
        - 'overlay'

    - name: 'Modprobe kernel modules.'
      community.general.modprobe:
        name: "{{ item }}"
      loop:
        - 'aufs'
        - 'br_netfilter'
        - 'overlay'

#    - name: 'Setup user account.'
#      include_role:
#        name: 'ndouglas.utility'
#        tasks_from: 'setup_user_account'
#      vars:
#        user: 'nathan'
#
#    - name: 'Install Dotfiles.'
#      include_role:
#        name: 'ndouglas.install_dotfiles'
#        tasks_from: 'update_dotfiles'
END
  popd > /dev/null;
}
