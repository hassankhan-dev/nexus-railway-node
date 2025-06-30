FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl unzip screen

# Install Nexus CLI
RUN curl -L https://github.com/Nexus-Labs/nexus-cli/releases/latest/download/nexus-linux-amd64 -o /usr/local/bin/nexus-network && \
    chmod +x /usr/local/bin/nexus-network

# Add your startup script
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

