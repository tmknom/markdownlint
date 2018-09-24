# markdownlint

[![CircleCI](https://circleci.com/gh/tmknom/markdownlint.svg?style=svg)](https://circleci.com/gh/tmknom/markdownlint)
[![Docker Build Status](https://img.shields.io/docker/build/tmknom/markdownlint.svg)](https://hub.docker.com/r/tmknom/markdownlint/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/tmknom/markdownlint.svg)](https://hub.docker.com/r/tmknom/markdownlint/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/markdownlint.svg)](https://microbadger.com/images/tmknom/markdownlint)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/markdownlint.svg)](https://microbadger.com/images/tmknom/markdownlint)
[![License](https://img.shields.io/github/license/tmknom/markdownlint.svg)](https://opensource.org/licenses/Apache-2.0)

Lint tool for Markdown based on Docker.

This is [markdownlint](https://github.com/DavidAnson/markdownlint) and [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) wrapper.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

### Lint markdown file under the specified directory

```shell
docker run -i --rm -v <markdown_dir>:/work tmknom/markdownlint
```

### Lint specified markdown file

```shell
docker run -i --rm tmknom/markdownlint -s < <markdown_file>
```

### Help

```shell
docker run -i --rm tmknom/markdownlint -h
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/markdownlint.git
cd markdownlint
make install
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/markdownlint>
2. CircleCI - Continuous Integration
   - <https://circleci.com/gh/tmknom/markdownlint>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/markdownlint>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/markdownlint>

## License

Apache 2 Licensed. See LICENSE for full details.
