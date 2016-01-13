#!/bin/bash
set -e

if [ -z $1 ] || [ ${1:0:1} = '-' ]; then
  cd /home/node
  npm install
  set -- npm start "$@"
fi

exec "$@"
