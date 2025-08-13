FROM v2fly/v2fly-core:latest

COPY config.json /etc/v2ray/config.json

EXPOSE 443

CMD [ "run", "-config", "/etc/v2ray/config.json"]
