FROM alpine:3.8

RUN set -x && \
    apk add --no-cache nodejs nodejs-npm && \
    npm install -g markdownlint-cli && \
    npm cache clean --force && \
    apk del nodejs-npm && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/markdownlint"]
CMD ["--help"]
