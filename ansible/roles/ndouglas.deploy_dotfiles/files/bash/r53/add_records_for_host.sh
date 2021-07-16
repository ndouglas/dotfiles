#!/usr/bin/env bash

# Add Route 53 DNS records for a host.
r53_add_records_for_host() {
  : "${1?"Usage: ${FUNCNAME[0]} HOST"}";
  hostname="${1}";
  ans_run_role_task \
    "${hostname}" \
    "ndouglas.aws.route53" \
    "create_records_for_hostname.yaml";
}
