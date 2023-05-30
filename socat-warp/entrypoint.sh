#!/bin/bash

(
while ! warp-cli --accept-tos register; do
	sleep 1
	>&2 echo "Awaiting warp-svc become online..."
done

warp-cli --accept-tos set-mode proxy
warp-cli --accept-tos set-proxy-port 5001
warp-cli --accept-tos connect
warp-cli enable-always-on
socat tcp-listen:5000,reuseaddr,fork tcp:localhost:5001
) &

exec warp-svc
warp-cli enable-always-on