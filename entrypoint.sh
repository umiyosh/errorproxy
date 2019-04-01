#!/bin/sh
set -e

envsubst \
'\$WORKER_CONNECTIONS \$WORKER_PROCESSES' \
  < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

envsubst '\$LATENCY_ERR_MS \$LATENCY_OK_MS \$LISTEN_PORT \$UPSTREAM_NAME \$UPSTREAM_KEEPALIVE \$SERVER_NAME \$ERROR_RATE' < /etc/nginx/nginx.vh.template.default.conf > /etc/nginx/conf.d/default.conf

exec nginx -g "daemon off;"
