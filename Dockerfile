# syntax=docker/dockerfile:1.3-labs
FROM node:16.19.1-alpine

WORKDIR /app

COPY init.sh package-lock.json ./

RUN <<EOF
set -euo pipefail
apk add --no-cache bash jq
version="$(jq -r '.packages["node_modules/tiddlywiki"].version' package-lock.json)"
npm install --global "tiddlywiki@$version"
apk del jq
EOF

EXPOSE 8080

VOLUME /var/lib/tiddlywiki

ENTRYPOINT ["/app/init.sh"]
