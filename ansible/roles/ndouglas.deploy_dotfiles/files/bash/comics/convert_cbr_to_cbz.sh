#!/usr/bin/env bash

# Convert a comic from CBR to CBZ format.
cmx_convert_cbr_to_cbz() {
  : "${1?"Usage: ${FUNCNAME} FILENAME|DIRECTORY"}";
  if [ -d "${1}" ]; then
    the_directory="${1}";
    find "${the_directory}" -type f -iname '*.cbr' -print0 \
      | while read -d $'\0' the_filename; do
          cmx_convert_cbr_to_cbz "${the_filename}";
        done;
  elif [ -f "${1}" ]; then
    the_filename="${1}";
    # Either it's a CBZ in disguise that should merely be renamed...
    if [ "$(cmx_is_covert_cbz "${the_filename}")" -eq 0 ]; then
      new_path="$(cmx_rename_covert_cbz "${the_filename}")";
      echo "Renamed ${the_filename} -> ${new_path}" >&2;
      return 0;
    fi;
    # Or it's a corrupt or otherwise weird file...
    if [ "$(nd_is_rar_file "${the_filename}")" -ne 0 ]; then
      echo "${1} is not a valid rar file." >&2;
      return 1;
    fi;
    # Or it's a valid CBR that should be converted.
    the_dirname="$(realpath "$(dirname "${the_filename}")")";
    the_basename="$(basename "${the_filename}" ".cbr")";
    the_zipname="${the_basename}.cbz";
    the_tempdir="$(mktemp -d -p "${HOME}/Temporary")";
    the_newpath="${the_dirname}/${the_zipname}";
    rm -rf "${the_tempdir}";
    mkdir -p "${the_tempdir}";
    unrar e -y "${the_filename}" -o "${the_tempdir}" > /dev/null;
    pushd "${the_tempdir}" > /dev/null;
    zip -q "${the_zipname}" -- *;
    mv "${the_zipname}" "${the_newpath}";
    popd > /dev/null;
    rm -rf "${the_tempdir}";
    rm "${the_filename}";
    echo "Converted ${the_filename} -> ${the_newpath}" >&2;
  else
    echo "${1} is not a valid file or directory." >&2;
    exit 1;
  fi;
}

cbr2cbz() {
  cmx_convert_cbr_to_cbz "$@";
}

export -f cbr2cbz;
