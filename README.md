# markdownlint-cli

Lint tool for Markdown based on Docker.

This is [markdownlint](https://github.com/DavidAnson/markdownlint)
and [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) wrapper.

## Requirements

- docker

## Usage

### Lint markdown file under the specified directory

```shell
docker run -i --rm -v <markdown_dir>:/work tmknom/markdownlint-cli
```

### Lint specified markdown file

```shell
docker run -i --rm tmknom/markdownlint-cli -s < <markdown_file>
```

### Help

```shell
docker run -i --rm tmknom/markdownlint-cli -h
```

## Makefile targets

```text
build                          Build docker
help                           Show help
install                        Install requirements
lint                           Lint dockerfile and markdown
lint_dockerfile                Lint dockerfile
lint_markdown                  Lint markdown
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/markdownlint-cli.git
cd markdownlint-cli
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

### Registry

https://hub.docker.com/r/tmknom/markdownlint-cli/

## License

Apache 2 Licensed. See LICENSE for full details.
