#!/bin/sh
envsubst < /etc/nginx/stream.conf.d/stream.tpl > /etc/nginx/stream.conf.d/stream.conf

# cat /etc/nginx/conf.d/default.conf
# TODO: start nginx for proxy
# tail -f /dev/null