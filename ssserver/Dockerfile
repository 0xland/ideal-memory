FROM ghcr.io/shadowsocks/ssserver-rust:latest

USER root

RUN cd /tmp && \
    TAG=$(wget -qO- https://api.github.com/repos/teddysun/v2ray-plugin/releases/latest | grep tag_name | cut -d '"' -f4) && \
    wget https://github.com/teddysun/v2ray-plugin/releases/download/$TAG/v2ray-plugin-linux-arm64-$TAG.tar.gz && \
    tar -xf *.gz && \
    rm *.gz && \
    mv v2ray* /usr/bin/v2ray-plugin_linux_amd64 && \
    chmod +x /usr/bin/v2ray-plugin_linux_amd64


# RUN cd /tmp && \
#     TAG=$(wget -qO- https://api.github.com/repos/teddysun/xray-plugin/releases/latest | grep tag_name | cut -d '"' -f4) && \
#     wget https://github.com/teddysun/xray-plugin/releases/download/$TAG/xray-plugin-linux-amd64-$TAG.tar.gz && \
#     tar -xf *.gz && \
#     rm *.gz && \
#     mv xray* /usr/bin/xray-plugin_linux_amd64 && \
#     chmod +x /usr/bin/xray-plugin_linux_amd64


RUN cd /tmp && \
    TAG=$(wget -qO- https://api.github.com/repos/xtaci/kcptun/releases/latest | grep tag_name | cut -d '"' -f4) && \
    wget https://github.com/xtaci/kcptun/releases/download/v20221015/kcptun-linux-amd64-20221015.tar.gz && \
    tar -xf *.gz && \
    rm *.gz && \
    mv server_linux_amd64 /usr/bin/kcptun_linux_amd64 && \
    chmod +x /usr/bin/kcptun_linux_amd64


# RUN cd /tmp && \
#     TAG=$(wget -qO- https://api.github.com/repos/cbeuw/Cloak/releases/latest | grep tag_name | cut -d '"' -f4) && \
#     wget https://github.com/cbeuw/Cloak/releases/download/$TAG/ck-server-linux-amd64-$TAG && \
#     mv ck-server-linux-amd64* /usr/bin/ck-server-linux-amd64 && \
#     chmod +x /usr/bin/ck-server-linux-amd64
