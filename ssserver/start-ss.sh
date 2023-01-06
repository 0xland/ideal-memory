#!/usr/bin/env sh

set -xe

#exec kcptun_linux_amd64 -t "127.0.0.1:8443" -l ":4000" -mode fast2

exec ssserver \
    -s "0.0.0.0:8443" \
    -k $PASSWORD \
    -m $METHOD \
    --timeout $TIMEOUT \
    --dns $DNS_ADDRS &
exec kcptun_linux_amd64  -t 127.0.0.1:8443 --listen 0.0.0.0:16384–16387 -mode fast3
# exec ssserver \
#     -s "0.0.0.0:8443" \
#     -k $PASSWORD \
#     -m $METHOD \
#     --timeout $TIMEOUT \
#     --dns $DNS_ADDRS \
#     --tcp-fast-open \
#     --tcp-no-delay \
#     $ARGS
