#!/usr/bin/env bash

set -e

docker run -it --rm \
    -p "80:80" \
    -p "443:443" \
    -v $(pwd)/config/nginx.conf:/etc/nginx/nginx.conf:ro \
    -v $(pwd)/config/conf.d:/etc/nginx/conf.d:ro \
    --name ratiocoffe nginx
