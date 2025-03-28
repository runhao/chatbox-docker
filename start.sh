#!/bin/bash

mkdir -p /var/log/nginx
nginx -c /usr/local/nginx/conf/nginx.conf
npm run build
http-server ./dist -p 3000
tail -f /dev/null
