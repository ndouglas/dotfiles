#!/usr/bin/env bash

# Get the full text of all subtitle lines matching an expression.
ffmpeg_get_subtitle_lines() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  if [ ! -f "${subtitle_file}" ]; then
    ffmpeg_extract_subtitles "${video_file}" || return -1;
  fi;
  grep -iE "${expression}" "${subtitle_file}";
}
