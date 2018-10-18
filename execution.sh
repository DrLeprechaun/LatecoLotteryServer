#!/usr/bin/env bash

gunicorn -b 0.0.0.0:9000 manage:app &

# start nginx.
service nginx restart

tail -f /dev/null
