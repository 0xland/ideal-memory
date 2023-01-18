#!/usr/bin/env sh

set -xe

exec ssserver \
    -s "0.0.0.0:8443" \
    -k $PASSWORD \
    -m $METHOD \
    --timeout $TIMEOUT \
    --dns $DNS_ADDRS &

exec ck-server-linux-amd64 \
    -c ckserver.json


