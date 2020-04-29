FROM alpine:3.11.6

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG REPO_NAME
LABEL org.label-schema.vendor="tmknom" \
      org.label-schema.name=$REPO_NAME \
      org.label-schema.description="Lint tool for Markdown." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/$REPO_NAME" \
      org.label-schema.usage="https://github.com/$REPO_NAME/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="docker run --rm -i -v \$PWD:/work $REPO_NAME" \
      org.label-schema.schema-version="1.0"

ARG NODEJS_VERSION=12.15.0-r1
ARG MARKDOWNLINT_VERSION

RUN set -x && \
    apk add --no-cache nodejs=${NODEJS_VERSION} nodejs-npm=${NODEJS_VERSION} && \
    npm install -g markdownlint-cli@${MARKDOWNLINT_VERSION} && \
    npm cache clean --force && \
    apk del nodejs-npm

WORKDIR /work
ENTRYPOINT ["/usr/bin/markdownlint"]
CMD ["."]
