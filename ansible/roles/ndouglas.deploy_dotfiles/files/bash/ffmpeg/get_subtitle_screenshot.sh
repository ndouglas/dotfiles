#!/usr/bin/env bash

# Get screenshot at timestamp with subtitle.
ffmpeg_get_subtitle_screenshot() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  destination_path="$(mktemp -d)";
  timestamp="$(ffmpeg_get_subtitle_timestamp "${video_file}" "${expression}")";
  [ "$?" -eq 0 ] || return -1;
  full_line="$(ffmpeg_get_subtitle_line "${video_file}" "${expression}")";
  [ "$?" -eq 0 ] || return -1;
  filename="$(echo "${timestamp}_${full_line}" | sed -e 's/[^A-Za-z0-9_]/_/g' -e 's/_\+/_/g').png";
  full_path="${destination_path}/${filename}";
  ffmpeg \
    -ss "${timestamp}" \
    -copyts \
    -i "${video_file}" \
    -vf subtitles="${subtitle_file}" \
    -vframes 1 \
    "${full_path}";
  [ "$?" -eq 0 ] || return -1;
  echo "${full_path}";
}
