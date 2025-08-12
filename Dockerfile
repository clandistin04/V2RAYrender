FROM debian:stable-slim

# Install dependencies
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Install V2Ray
RUN curl -L -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip     && unzip v2ray.zip -d /usr/local/bin     && rm v2ray.zip

# Copy config and start script
COPY config.json /etc/v2ray/config.json
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose HTTPS port
EXPOSE 443

# Start
CMD ["/start.sh"]
