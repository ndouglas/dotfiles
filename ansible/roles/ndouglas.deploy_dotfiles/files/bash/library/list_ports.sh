#!/usr/bin/env bash

# List open ports and the programs using them.
nd_list_ports() {
  sudo /bin/netstat -nlatp | grep tcp | grep LIST | awk '{print $4,$7}' | awk -F: '{print $2}' | awk -F/ '{print $1,$2}' | awk '{print $1,$3}' | sort -nu;
}
