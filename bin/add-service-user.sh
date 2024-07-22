#!/usr/bin/env bash
LC_ALL=C adduser \
  --user-group \
  --system \
  --shell /bin/bash \
  --password=`tr -dc '[:graph:]' </dev/urandom | head -c 13` \
  --create-home \
  --home-dir /home/minecraft \
 minecraft
