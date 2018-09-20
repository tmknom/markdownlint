# markdownlint-cli

Lint tool for Markdown based on Docker.

This is [markdownlint](https://github.com/DavidAnson/markdownlint)
and [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli) wrapper.

## Requirements

- docker
- make

## Usage

`docker run` or `make`

### docker run

```shell
docker run --rm \
    -v <markdown_dir>:/work \
    -w /work \
    tmknom/markdownlint-cli:1.0.0 \
    markdownlint .
```

### make

```shell
git clone git@github.com:tmknom/markdownlint-cli.git && cd markdownlint-cli
make lint MD_PATH=<markdown_dir>
```

## License

Apache 2 Licensed. See LICENSE for full details.
