#!/usr/bin/env bash

# Get screenshots with subtitle matching expression.
ffmpeg_get_subtitle_screenshots() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  destination_path="$(mktemp -d)";
  timestamps="$(ffmpeg_get_subtitle_timestamps "${video_file}" "${expression}")";
  [ "$?" -eq 0 ] || return -1;
  ifs="${IFS}";
  IFS=$'\n'
  for timestamp in $timestamps; do
    if [[ "${timestamp}" =~ ^[0-9]{2}:[0-9]{2}:[0-9]{2}.[0-9]{3}$ ]]; then
      full_line="$(ffmpeg_get_subtitle_lines_at_timestamp "${video_file}" "${timestamp}")";
      filename="$(echo "${timestamp}_${full_line}" | sed -e 's/[^A-Za-z0-9_]/_/g' -e 's/_\+/_/g').png";
      full_path="${destination_path}/${filename}";
      ffmpeg \
        -hide_banner \
        -loglevel error \
        -ss "${timestamp}" \
        -copyts \
        -i "${video_file}" \
        -vf subtitles="${subtitle_file}" \
        -vframes 1 \
        "${full_path}";
      echo "${full_path}";
    else
      echo "Timestamp ${timestamp} does not match expected format." >&2;
    fi;
  done;
  IFS=ifs;
}
