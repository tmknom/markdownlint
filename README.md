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
lint                           Lint dockerfile and markdown
lint_dockerfile                Lint dockerfile
lint_markdown                  Lint markdown
```

## License

Apache 2 Licensed. See LICENSE for full details.
