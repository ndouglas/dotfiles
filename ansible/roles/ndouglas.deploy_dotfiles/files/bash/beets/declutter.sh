#!/usr/bin/env bash

# Remove non-music clutter from directories.
beets_declutter() {
  : "${1?"Usage: ${FUNCNAME[0]} DIRECTORY"}";
  the_directory="${1}";
  find "${the_directory}" \
    -type f \
    \( \
      -iname '*.accurip' \
      -o -iname '*.bmp' \
      -o -iname '*.cue' \
      -o -iname '*.ffp' \
      -o -iname '*.jpg' \
      -o -iname '*.jpeg' \
      -o -iname '*.log' \
      -o -iname '*.m3u' \
      -o -iname '*.m3u8' \
      -o -iname '*.md5' \
      -o -iname '*.mp3' \
      -o -iname '*.nfo' \
      -o -iname '*.pdf' \
      -o -iname '*.png' \
      -o -iname '*.sfv' \
      -o -iname '*.txt' \
    \) \
    -print \
    -delete;
  nd_declutter "${the_directory}";
}
