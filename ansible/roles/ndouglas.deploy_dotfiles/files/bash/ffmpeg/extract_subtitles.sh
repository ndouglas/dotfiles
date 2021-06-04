#!/usr/bin/env bash

# Extract subtitles.
ffmpeg_extract_subtitles() {
  : "${1?"Usage: ${FUNCNAME} VIDEO_FILE"}";
  video_file="${1}";
  subtitle_file="${video_file}.srt";
  ffmpeg -i "${video_file}" "${subtitle_file}";
}
