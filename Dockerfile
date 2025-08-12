FROM v2fly/v2fly-core

COPY config.json /etc/v2ray/config.json

EXPOSE 443

CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
