# syntax=docker/dockerfile:1.3-labs
FROM node:16.19.1-alpine

WORKDIR /app

COPY init.sh init.sh

RUN <<EOF
apk add --no-cache bash
npm install --global tiddlywiki@5.3.1
EOF

EXPOSE 8080

VOLUME /var/lib/tiddlywiki

ENTRYPOINT ["/app/init.sh"]
