#!/bin/bash

mkdir -p /var/log/nginx
nginx -c /usr/local/nginx/conf/nginx.conf
npm run package
http-server ./release/build -p 3000
tail -f /dev/null
