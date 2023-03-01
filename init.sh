#!/bin/bash

set -euo pipefail

# Initialize the TiddlyWiki data directory if it's empty
if [ -z "$(ls -A /var/lib/tiddlywiki)" ]; then
    echo "Initializing TiddlyWiki data directory..."
    npx -s tiddlywiki /var/lib/tiddlywiki --init server
fi

# Set the default username and password if they're not set
listen_params="host=0.0.0.0 port=8080"
if [ -n "${PATH_PREFIX-}" ]; then
  listen_params="$listen_params path-prefix=$PATH_PREFIX"
fi
if [ -n "${USERNAME-}" ]; then
  listen_params="$listen_params username=$USERNAME"
  listen_params="$listen_params password=${PASSWORD-}"
elif [ -n "${ANON_USERNAME-}" ]; then
  listen_params="$listen_params anon-username=$ANON_USERNAME"
fi

# Start the TiddlyWiki server with the specified username and password
echo "Starting TiddlyWiki server..."
# shellcheck disable=SC2086
exec npx -s tiddlywiki /var/lib/tiddlywiki --listen $listen_params
