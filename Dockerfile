FROM v2fly/v2fly-core:latest

COPY config.json /etc/v2ray/config.json
COPY cert.pem /etc/v2ray/cert.pem
COPY key.pem /etc/v2ray/key.pem

EXPOSE 443

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
