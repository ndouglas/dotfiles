#!/usr/bin/env bash

# Get the full text of a subtitle line.
ffmpeg_get_subtitle_line() {
  : "${2?"Usage: ${FUNCNAME} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  if [ ! -f "${subtitle_file}" ]; then
    ffmpeg_extract_subtitles "${video_file}";
  fi;
  grep "${expression}" "${subtitle_file}" -m 1;
}
