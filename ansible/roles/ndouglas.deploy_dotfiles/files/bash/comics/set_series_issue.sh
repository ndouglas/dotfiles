#!/usr/bin/env bash

# Set the series and issue number of the specified issue.
cmx_set_series_issue() {
  : "${3?"Usage: ${FUNCNAME} FILE SERIES ISSUE"}";
  the_filename="${1}";
  the_series="${2}";
  the_issue="${3}";
  cmx_set_metadata "${the_filename}" "series=${the_series},issue=${the_issue}";
}
