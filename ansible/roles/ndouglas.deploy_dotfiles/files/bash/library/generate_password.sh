#!/usr/bin/env bash

# Generate a randomized, obscure password.
nd_generate_password() {
  LC_ALL=C tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' < /dev/urandom | head -c 20;
}
