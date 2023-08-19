FROM alpine:latest

USER root

COPY start-xray.sh /

RUN set -ex \
    && apk add --no-cache tzdata ca-certificates unzip

RUN cd /tmp && \
    # TAG=$(wget -qO- https://api.github.com/repos/XTLS/Xray-core/releases/latest | grep tag_name | cut -d '"' -f4) && \
    TAG=v1.8.3 && \
    wget https://github.com/XTLS/Xray-core/releases/download/$TAG/Xray-linux-arm64-v8a.zip && \
    unzip *.zip && \
    rm *.zip && \
    mv xray /usr/bin/xray && \
    mkdir -p /var/log/xray /usr/share/xray && \
    mv geosite.dat /usr/share/xray/ && \
    mv geoip.dat /usr/share/xray/ && \
    chmod +x /usr/bin/xray

