#!/usr/bin/env bash

# Set the publisher, series, volume, and issue number of the specified issue.
cmx_set_publisher_series_volume_issue() {
  : "${5?"Usage: ${FUNCNAME} FILE PUBLISHER SERIES VOLUME ISSUE"}";
  the_filename="${1}";
  the_publisher="${2}";
  the_series="${3}";
  the_volume="${4}";
  the_issue="${5}";
  cmx_set_metadata "${the_filename}" "publisher=${the_publisher},series=${the_series},volume=${the_volume},issue=${the_issue}";
}
