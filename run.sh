#!/bin/sh

/usr/local/bin/dockerize -template /app/default.conf.tmpl:/etc/nginx/conf.d/default.conf /bin/true

exec nginx -g 'daemon off;'
