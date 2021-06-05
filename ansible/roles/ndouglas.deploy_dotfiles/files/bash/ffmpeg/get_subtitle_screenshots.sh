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
  while read -r timestamp; do
    full_line="$(ffmpeg_get_subtitle_lines_at_timestamp "${video_file}" "${timestamp}")";
    filename="$(echo "${timestamp}_${full_line}" | sed -e 's/[^A-Za-z0-9_]/_/g' -e 's/_\+/_/g').png";
    full_path="${destination_path}/${filename}";
    ffmpeg \
      -ss "${timestamp}" \
      -copyts \
      -i "${video_file}" \
      -vf subtitles="${subtitle_file}" \
      -vframes 1 \
      "${full_path}";
    echo "${full_path}";
  done < <(printf '%s\n' "${timestamps}");
}
