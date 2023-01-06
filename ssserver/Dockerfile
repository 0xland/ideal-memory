FROM ghcr.io/shadowsocks/ssserver-rust:latest

USER root

RUN cd /tmp && \
    TAG=$(wget -qO- https://api.github.com/repos/xtaci/kcptun/releases/latest | grep tag_name | cut -d '"' -f4) && \
    wget https://github.com/xtaci/kcptun/releases/download/v20221015/kcptun-linux-amd64-20221015.tar.gz && \
    tar -xf *.gz && \
    rm *.gz && \
    mv server_linux_amd64 /usr/bin/kcptun_linux_amd64 && \
    chmod +x /usr/bin/kcptun_linux_amd64

