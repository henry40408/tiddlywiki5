#!/bin/bash

set -euo pipefail

# Initialize the TiddlyWiki data directory if it's empty
if [ -z "$(ls -A /var/lib/tiddlywiki)" ]; then
    echo "Initializing TiddlyWiki data directory..."
    npx -s tiddlywiki /var/lib/tiddlywiki --init server
fi

# Set the default username and password if they're not set
if [ -z "${TW5_USERNAME-}" ]; then
    export TW5_USERNAME="user"
fi

if [ -z "${TW5_PASSWORD-}" ]; then
    export TW5_PASSWORD="password"
fi

# Start the TiddlyWiki server with the specified username and password
echo "Starting TiddlyWiki server..."
exec npx -s tiddlywiki /var/lib/tiddlywiki --listen host=0.0.0.0 port=8080 username="$TW5_USERNAME" password="$TW5_PASSWORD"
