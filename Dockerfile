FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache nodejs npm && \
    npm install -g @grinev/opencode-telegram-bot@latest && \
    rm -rf /root/.npm /tmp/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
