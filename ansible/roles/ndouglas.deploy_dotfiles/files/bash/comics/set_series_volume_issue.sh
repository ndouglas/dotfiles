#!/usr/bin/env bash

# Set the series, volume, and issue number of the specified issue.
cmx_set_series_volume_issue() {
  : "${4?"Usage: ${FUNCNAME} FILE SERIES VOLUME ISSUE"}";
  the_filename="${1}";
  the_series="${2}";
  the_volume="${3}";
  the_issue="${4}";
  cmx_set_metadata "${the_filename}" "series=${the_series},volume=${the_volume},issue=${the_issue}";
}
