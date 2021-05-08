#!/usr/bin/env bash

# Make an RPC request to determine the total number of current torrents.
torrent_get_total_torrent_count() {
  : "${1?"Usage: ${FUNCNAME} SAFE_DOMAIN"}";
  safe_domain="${1}";
  data='{"arguments":{"fields":["error","errorString","eta","id","isFinished","leftUntilDone","name","peersGettingFromUs","peersSendingToUs","rateDownload","rateUpload","sizeWhenDone","status","uploadRatio"]},"method":"torrent-get","tag":4}';
  torrent_make_rpc_request "${safe_domain}" "${data}" | jq '.arguments.torrents | length';
}
