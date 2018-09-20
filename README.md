# docker-markdownlint

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
    tmknom/docker-markdownlint:1.0.0 \
    markdownlint .
```

### make

```shell
git clone git@github.com:tmknom/docker-markdownlint.git && cd docker-markdownlint
make lint MD_PATH==/path/to/markdown/dir
```

## License

Apache 2 Licensed. See LICENSE for full details.
