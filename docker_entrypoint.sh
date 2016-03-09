#!/bin/bash

sed -i "s/<server_name>/${NGINX_SERVER_NAME}/" /etc/nginx/conf.d/default.conf
sed -i "s@<root>@${NGINX_ROOT}@" /etc/nginx/conf.d/default.conf

exec "$@"
