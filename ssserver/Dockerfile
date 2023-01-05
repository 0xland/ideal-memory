FROM ghcr.io/shadowsocks/ssserver-rust:latest

USER root

RUN cd /tmp && \
    TAG=$(wget -qO- https://api.github.com/repos/xtaci/kcptun/releases/latest | grep tag_name | cut -d '"' -f4) && \
    wget https://github.com/xtaci/kcptun/releases/download/$TAG/kcptun-linux-amd64-$TAG.tar.gz && \
    tar -xf *.gz && \
    rm *.gz && \
    mv kcptun-linux-amd64-$TAG/server* /usr/bin/kcptun_linux_amd64 && \
    chmod +x /usr/bin/kcptun_linux_amd64

