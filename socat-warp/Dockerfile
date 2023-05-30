FROM ubuntu:22.04

COPY entrypoint.sh /

USER root

# Update package repositories
RUN apt-get update && \
    apt-get install -y curl gnupg ca-certificates lsb-release

# Add Cloudflare Warp GPG key
RUN curl https://pkg.cloudflareclient.com/pubkey.gpg | gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

# Add Cloudflare Warp repository
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/cloudflare-client.list

# Update package repositories
RUN apt-get update && \
    apt-get install -y cloudflare-warp socat && \
    chmod +x /entrypoint.sh

CMD bash /entrypoint.sh