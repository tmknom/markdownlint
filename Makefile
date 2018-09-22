.DEFAULT_GOAL := help

# https://gist.github.com/tadashi-aikawa/da73d277a3c1ec6767ed48d1335900f3
.PHONY: $(shell grep -E '^[a-zA-Z_-]+:' $(MAKEFILE_LIST) | sed 's/://')


lint: lint_dockerfile lint_markdown ## lint dockerfile and markdown

lint_markdown: ## lint markdown
	docker run --rm -i -v $(CURDIR):/work tmknom/markdownlint-cli

lint_dockerfile: ## lint dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile

build: ## build docker
	docker build -t tmknom/markdownlint-cli .

# https://postd.cc/auto-documented-makefile/
help: ## show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
