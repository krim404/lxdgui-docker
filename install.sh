#!/bin/sh
apk update
apk add sudo
apk add openssl
npm install -g bower
npm install -g http-server
bower install --allow-root
openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365 -nodes -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=localhost"
