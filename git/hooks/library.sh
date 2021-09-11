#!/usr/bin/env bash

script_path="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )";
color_restore='\033[0m';
color_red='\033[00;31m';
color_green='\033[00;32m';
color_yellow='\033[00;33m';
color_blue='\033[00;34m';
color_purple='\033[00;35m';
color_cyan='\033[00;36m';
color_lgray='\033[00;37m';
color_lred='\033[01;31m';
color_lgreen='\033[01;32m';
color_lyellow='\033[01;33m';
color_lblue='\033[01;34m';
color_lpurple='\033[01;35m';
color_lcyan='\033[01;36m';
color_white='\033[01;37m';
success_icon="${color_green}✓${color_restore}";
failure_icon="${color_red}✘${color_restore}";
current_branch_name="$(git symbolic-ref --short HEAD)";
main_branch_name='main';
repository_root="$(git rev-parse --show-toplevel)";
version_file="${repository_root}/.version";

dot_file_is_binary() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE"}";
  local p="$(printf '%s\t-\t' -)";
  local t="$(git diff --no-index --numstat /dev/null "$1")";
  case "$t" in "$p"*) return 0 ;; esac
  return 1
}

dot_success_message() {
  : "${1?"Usage: ${FUNCNAME[0]} MESSAGE"}";
  local message="${1}";
  echo -e "${success_icon} ${message}" >&2;
}

dot_failure_message() {
  : "${1?"Usage: ${FUNCNAME[0]} MESSAGE"}";
  local message="${1}";
  echo -e "${failure_icon} ${message}" >&2;
}
