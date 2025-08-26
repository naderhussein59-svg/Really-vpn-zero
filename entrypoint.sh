#!/bin/sh

if [ ! -f /usr/bin/v2ray ]; then
    curl -L -o /tmp/v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
    unzip /tmp/v2ray.zip -d /tmp/v2ray
    mv /tmp/v2ray/v2ray /usr/bin/v2ray
    chmod +x /usr/bin/v2ray
fi

/usr/bin/v2ray run -c /app/config.json
