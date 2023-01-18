#!/usr/bin/env sh

set -xe

exec ssserver \
    -s "0.0.0.0:8443" \
    -k $PASSWORD \
    -m $METHOD \
    --timeout $TIMEOUT \
    --dns $DNS_ADDRS &

exec kcptun_linux_amd64 \
    -t 127.0.0.1:8443 \
    -l 0.0.0.0:$KCP_PORT \
    --key $PASSWORD \
    --crypt aes-128 \
    --mode $KCP_MODE \
    --dscp 32 \
    --quiet


