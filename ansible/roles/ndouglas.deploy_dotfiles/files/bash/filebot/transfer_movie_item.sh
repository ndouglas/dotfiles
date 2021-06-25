#!/usr/bin/env bash

# Transfer a movie item to the movie destination.
filebot_transfer_movie_item() {
  : "${2?"Usage: ${FUNCNAME} FILE|DIRECTORY DESTINATION"}";
  the_item="${1}";
  destination="${2}";
  echo "Transferring Movie Item: ${the_item} ..." >&2;
  filebot \
    -script dev:amc \
    "${the_item}" \
    --output /movies \
    --action move \
    -non-strict \
    --order Airdate \
    --conflict auto \
    --lang en \
    --def \
      ut_label=Movie \
      artwork=y \
      subtitles=eng \
      clean=y \
      deleteAfterExtract=y \
      minLengthMS=300000 \
      minFileSize=100000000 \
      excludeList=.excludes \
      movieFormat="${destination}/{plex.tail}" \
    --apply refresh \
    --log all \
    --log-file "${HOME}/filebot.log";
  if [ -d "${the_item}" ]; then
    nd_declutter "${the_item}";
    find "${the_item}" -type d -empty -print -delete;
  fi;
}
