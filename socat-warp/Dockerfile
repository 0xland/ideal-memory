FROM ubuntu:22.04

USER root

# Add Cloudflare Warp GPG key
RUN curl https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

# Add Cloudflare Warp repository
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/cloudflare-client.list

# Update package repositories
RUN apt update

# Install Cloudflare Warp
RUN apt install -y cloudflare-warp
RUN apt install -y socat

RUN warp-cli --accept-tos delete
RUN warp-cli --accept-tos register
RUN warp-cli --accept-tos set-mode proxy
RUN warp-cli --accept-tos set-proxy-port 5001
RUN warp-cli --accept-tos connect

RUN socat tcp-listen:5000,reuseaddr,fork tcp:localhost:5001 &
