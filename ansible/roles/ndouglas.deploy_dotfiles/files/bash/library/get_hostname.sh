#!/usr/bin/env bash

# Get a properly formatted hostname.
nd_get_hostname() {
  echo "$(hostname -s | tr '[:upper:]' '[:lower:]')";
}
