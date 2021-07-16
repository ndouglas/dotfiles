#!/usr/bin/env bash

# Move the issue to its destination.
cmx_move_issue() {
  : "${1?"Usage: ${FUNCNAME[0]} FILE [METADATA]"}";
  the_filename="${1}";
  the_metadata="${2}";
  dupe_path="/volume1/Downloads/DuplicateComics";
  wtf_path="/volume1/Downloads/UnidentifiedComics";
  if [ -z "${the_metadata}" ]; then
    the_metadata="$(cmx_get_metadata "${the_filename}")";
    if [ -z "${the_metadata}" ]; then
      echo "Unable to retrieve metadata for ${the_filename}" >&2;
      return;
    fi;
  fi;
  new_path="$(cmx_get_new_path "${the_filename}" "${the_metadata}")";
  if [ -z "${new_path}" ]; then
    echo "Unable to retrieve new path for ${the_filename}" >&2;
    mv "${the_filename}" "${wtf_path}/";
    return;
  fi;
  new_dir="$(dirname "${new_path}")";
  mkdir -p "${new_dir}";
  if [ "$(realpath "${the_filename}")" == "$(realpath "${new_path}")" ]; then
    echo "No need to move ${the_filename}" >&2;
  else
    old_metadata_path="$(cmx_get_metadata_path "${the_filename}")";
    if [ -z "${CMX_DEBUG_MOVE}" ]; then
      echo "Moving ${the_filename} -> ${new_path}" >&2;
    fi;
    if [ -f "${new_path}" ]; then
      echo "Skipping; file exists at new path ${new_path}" >&2;
      new_path="${dupe_path}/$(basename "${new_path}")";
    fi;
    mv "${the_filename}" "${new_path}";
    cmx_write_cached_metadata "${new_path}" "${the_metadata}";
    if [ -f "${old_metadata_path}" ]; then
      rm -f "${old_metadata_path}";
    fi;
    if [ -z "${CMX_DEBUG_MOVE}" ]; then
      echo "Moved ${the_filename} -> ${new_path}" >&2;
    fi;
    echo "${new_path}";
  fi;
}
