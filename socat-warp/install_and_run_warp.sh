#!/bin/bash

# Check if running as root
if [[ $EUID -ne 0 ]]; then
  echo "Please run this script as root."
  exit 1
fi

# Add Cloudflare Warp GPG key
curl https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

# Add Cloudflare Warp repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/cloudflare-client.list

# Update package repositories
apt update

# Install Cloudflare Warp
apt install -y cloudflare-warp
apt install -y socat

warp-cli delete
warp-cli --accept-tos register
warp-cli set-mode proxy
warp-cli set-proxy-port 5001
warp-cli connect

socat tcp-listen:5000,reuseaddr,fork tcp:localhost:5001 &

echo "Complete!"
