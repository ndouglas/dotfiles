#!/usr/bin/env bash

# AWS completion.
[ -x "$(command -v aws_completer)" ] && complete -C "$(command -v aws_completer)" aws;
