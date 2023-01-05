FROM shadowsocks/shadowsocks-libev

USER root

RUN cd /tmp && \
    TAG=$(wget -qO- https://api.github.com/repos/teddysun/v2ray-plugin/releases/latest | grep tag_name | cut -d '"' -f4) && \
    wget https://github.com/teddysun/v2ray-plugin/releases/download/$TAG/v2ray-plugin-linux-amd64-$TAG.tar.gz && \
    tar -xf *.gz && \
    rm *.gz && \
    mv v2ray* /usr/bin/v2ray-plugin_linux_amd64 && \
    chmod +x /usr/bin/v2ray-plugin_linux_amd64

USER nobody
