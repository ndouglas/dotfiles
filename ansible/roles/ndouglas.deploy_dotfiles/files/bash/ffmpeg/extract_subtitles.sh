#!/usr/bin/env bash

# Extract subtitles.
ffmpeg_extract_subtitles() {
  : "${1?"Usage: ${FUNCNAME} VIDEO_FILE"}";
  video_file="${1}";
  subtitle_file="${video_file}.srt";
  if [ "$(ffmpeg -i "${video_file}" 2>&1 | grep -ic 'Subtitle')" -eq 0 ]; then
    return -1;
  fi;
  ffmpeg -i "${video_file}" -map 0:s:m:language:eng "${subtitle_file}";
}
