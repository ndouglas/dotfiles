#!/usr/bin/env bash

# Archive subreddits' top posts from several different periods.
rdt_update_archives() {
  awk '!/^ *#/ && NF' ~/.reddit.d/subreddits.txt \
    | while read the_subreddit; do
        echo "${the_subreddit}";
        rdt_archive_subreddit "${the_subreddit}";
      done;
}
