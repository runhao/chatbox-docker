#!/bin/bash

mkdir -p /var/log/nginx
nginx -c /usr/local/nginx/conf/nginx.conf
npm install
npm run package
http-server ./release/app/dist -p 3001
tail -f /dev/null
