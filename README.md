# markdownlint

[![Dockerfile Actions Status](https://github.com/tmknom/markdownlint/workflows/Dockerfile/badge.svg)](https://github.com/tmknom/markdownlint/actions?query=workflow%3ADockerfile)
[![Shell Script Actions Status](https://github.com/tmknom/markdownlint/workflows/Shell%20Script/badge.svg)](https://github.com/tmknom/markdownlint/actions?query=workflow%3A%22Shell+Script%22)
[![Markdown Actions Status](https://github.com/tmknom/markdownlint/workflows/Markdown/badge.svg)](https://github.com/tmknom/markdownlint/actions?query=workflow%3AMarkdown)
[![YAML Actions Status](https://github.com/tmknom/markdownlint/workflows/YAML/badge.svg)](https://github.com/tmknom/markdownlint/actions?query=workflow%3AYAML)
[![JSON Actions Status](https://github.com/tmknom/markdownlint/workflows/JSON/badge.svg)](https://github.com/tmknom/markdownlint/actions?query=workflow%3AJSON)

[![Docker Build Status](https://img.shields.io/docker/cloud/build/tmknom/markdownlint.svg)](https://hub.docker.com/r/tmknom/markdownlint/builds/)
[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tmknom/markdownlint.svg)](https://hub.docker.com/r/tmknom/markdownlint/)
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

1. Bump [VERSION](https://raw.githubusercontent.com/tmknom/markdownlint/master/VERSION) file.
2. Run `make release`.
3. Automatically deployed by "[Docker Hub Automated Build](https://docs.docker.com/docker-hub/builds/)".

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/markdownlint>
2. GitHub Actions - Continuous Integration
   - <https://github.com/tmknom/markdownlint/actions>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/markdownlint>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/markdownlint>

## License

Apache 2 Licensed. See LICENSE for full details.
