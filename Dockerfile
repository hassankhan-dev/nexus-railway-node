FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl unzip screen

# Install Nexus CLI
RUN curl -s https://nexus.xyz/install.sh | bash

# Add your startup script
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

