#!/usr/bin/env bash

# Display the path for this item.
cmx_get_new_path() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
  fi;
  the_imprint="$(cmx_get_imprint "${the_filename}" "${the_metadata}")";
  the_issue="$(cmx_get_issue "${the_filename}" "${the_metadata}")";
  the_publisher="$(cmx_get_publisher "${the_filename}" "${the_metadata}")";
  the_series="$(cmx_get_series "${the_filename}" "${the_metadata}")";
  the_title="$(cmx_get_title "${the_filename}" "${the_metadata}")";
  the_volume="$(cmx_get_volume "${the_filename}" "${the_metadata}")";
  if [ ! -z "${CMX_DEBUG_PATH}" ]; then
    echo -e "Publisher: \t${the_publisher}" >&2;
    echo -e "Imprint: \t${the_imprint}" >&2;
    echo -e "Series: \t${the_series}" >&2;
    echo -e "Volume: \t${the_volume}" >&2;
    echo -e "Issue: \t\t${the_issue}" >&2;
    echo -e "Title: \t\t${the_title}" >&2;
  fi;
  if [ -z "${the_issue}" ] || [ -z "${the_publisher}" ] || [ -z "${the_series}" ] || [ -z "${the_volume}" ]; then
    echo "Unable to construct meaningful new path for ${the_filename}" >&2;
    return;
  fi;
  the_imprint="$(nd_trim "$(echo "${the_imprint}" | sed -e 's/'\''s/s/g' -e 's/[^A-Za-z0-9_-]/ /g' | tr -s " ")")";
  the_publisher="$(nd_trim "$(echo "${the_publisher}" | sed -e 's/'\''s/s/g' -e 's/[^A-Za-z0-9_-]/ /g' | tr -s " ")")";
  the_series="$(nd_trim "$(echo "${the_series}" | sed -e 's/'\''s/s/g' -e 's/[^A-Za-z0-9_-]/ /g' | tr -s " ")")";
  the_title="$(nd_trim "$(echo "${the_title}" | sed -e 's/'\''s/s/g' -e 's/[^A-Za-z0-9_-]/ /g' | cut -c 1-50 | tr -s " ")")";
  if [[ "${the_issue}" =~ ^[+-]?[0-9]*$ ]]; then
    the_issue="$(printf "%04d" "$((10#${the_issue}))")";
  elif [[ "${the_issue}" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
    the_issue="$(printf "%04d.%d" "$((10#${the_issue%%.*}))" "$((10#${the_issue##*.}))")";
  else
    echo "Unable to construct a valid issue number for ${the_filename}" >&2;
    return;
  fi
  path_prefix="/volume1/Comics";
  if [ ! -z "${the_imprint}" ] && [ "${the_publisher}" != "${the_imprint}" ]; then
    the_publisher="${the_publisher} [${the_imprint}]";
  fi;
  the_directory="[${the_volume}] ${the_series} (${the_publisher})";
  new_filename="${the_issue}";
  if [ ! -z "${the_title}" ]; then
    new_filename="${the_issue} - ${the_title}";
  fi;
  new_path="${path_prefix}/${the_directory}/${new_filename}.cbz";
  echo "${new_path}";
}
