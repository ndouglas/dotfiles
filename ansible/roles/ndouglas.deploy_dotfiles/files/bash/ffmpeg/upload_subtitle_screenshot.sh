#!/usr/bin/env bash

# Upload screenshot at timestamp with subtitle.
ffmpeg_upload_subtitle_screenshot() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  filename="$(ffmpeg_get_subtitle_screenshot "${video_file}" "${expression}")";
  [ "$?" -eq 0 ] || return -1;
  video_file_safe="$(basename "${video_file}" | cut -d. -f1 | sed -e 's/[^A-Za-z0-9_]/_/g' -e 's/_\+/_/g')";
  filename_base="$(basename "${filename}")";
  destination_path="${video_file_safe}/${filename_base}";
  aws --profile s3 \
    s3 cp "${filename}" "s3://darkdell.ffss/${destination_path}";
  [ "$?" -eq 0 ] || return -1;
  echo "File uploaded to:";
  echo "https://ffss.darkdell.net/${destination_path}";
}
