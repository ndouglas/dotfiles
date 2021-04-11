#!/usr/bin/env bash

# Get the name of the host operating system.
nd_get_os() {
  unameOut="$(uname -s)"
  case "${unameOut}" in
    Linux*)     osName="linux";;
    FreeBSD*)   osName="freebsd";;
    NetBSD*)    osName="netbsd";;
    OpenBSD*)   osName="openbsd";;
    Darwin*)    osName="macos";;
    CYGWIN*)    osName="cygwin";;
    MINGW*)     osName="mingw";;
    *)          osName="UNKNOWN: ${unameOut}";;
  esac;
  echo "${osName}";
}
