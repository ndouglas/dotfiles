#!/usr/bin/env bash

# Get the full text of a subtitle line at a specified timestamp.
ffmpeg_get_subtitle_lines_at_timestamp() {
  : "${2?"Usage: ${FUNCNAME[0]} VIDEO_FILE TIMESTAMP"}";
  video_file="${1}";
  timestamp="${2}";
  subtitle_file="${video_file}.srt";
  if [ ! -f "${subtitle_file}" ]; then
    ffmpeg_extract_subtitles "${video_file}" || return -1;
  fi;
  cat "${subtitle_file}" \
    | grep -A 2 "${timestamp}" \
    | grep -v "${timestamp}" \
    | sed -e "s/\r//g" \
    | grep -v '^$' \
    | paste -sd ' ' -;
}
