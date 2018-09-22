FROM alpine:3.8

ARG NODEJS_VERSION=8.11.4-r0
ARG MARKDOWNLINT_CLI_VERSION=0.13.0

RUN set -x && \
    apk add --no-cache nodejs=${NODEJS_VERSION} nodejs-npm=${NODEJS_VERSION} && \
    npm install -g markdownlint-cli@${MARKDOWNLINT_CLI_VERSION} && \
    npm cache clean --force && \
    apk del nodejs-npm

WORKDIR /work
ENTRYPOINT ["/usr/bin/markdownlint"]
CMD ["."]
