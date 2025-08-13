FROM v2fly/v2fly-core:latest

# Copy server config
COPY config.json /etc/v2ray/config.json

# Expose service port (Koyeb will route TLS at the edge, container speaks plain WS)
EXPOSE 443

# Start V2Ray
CMD ["run", "-config", "/etc/v2ray/config.json"]
