#!/usr/bin/env bash

# start uswgi
#uwsgi --ini /usr/src/verbnoun/conf.ini &
uwsgi --plugin python  --ini /usr/src/latecolottery/conf.ini &

# start nginx.
service nginx restart

tail -f /dev/null
