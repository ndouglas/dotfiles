#!/usr/bin/env bash

# Get the full text of a subtitle line.
ffmpeg_get_subtitle_line() {
  : "${2?"Usage: ${FUNCNAME[0]} VIDEO_FILE EXPRESSION"}";
  video_file="${1}";
  expression="${2}";
  subtitle_file="${video_file}.srt";
  if [ ! -f "${subtitle_file}" ]; then
    ffmpeg_extract_subtitles "${video_file}" || return -1;
  fi;
  grep -A 1 -iE "${expression}" "${subtitle_file}" -m 1 \
    | grep -v '^$' \
    | sed -e "s/\r//g" \
    | paste -sd ' ' -;
}
