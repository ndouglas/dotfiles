#!/usr/bin/env bash

# Get timestamp of subtitle.
ffmpeg_get_subtitle_timestamp() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  if [ ! -f "${subtitle_file}" ]; then
    ffmpeg_extract_subtitles "${video_file}";
  fi;
  grep -i -B 2 "${expression}" "${subtitle_file}" -m 1 \
    | grep -oE '^[0-9]{2}:[0-9]{2}:[0-9]{2},[0-9]{3}' \
    | sed 's/,/./';
}
