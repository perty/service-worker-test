#!/bin/bash

echo "NOTE: certificate is for localhost - use https://localhost:8080"

npx http-server -S -C cert/localhost.pem -K cert/localhost-key.pem
