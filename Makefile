.DEFAULT_GOAL := help

# https://gist.github.com/tadashi-aikawa/da73d277a3c1ec6767ed48d1335900f3
.PHONY: $(shell grep -E '^[a-zA-Z_-]+:' $(MAKEFILE_LIST) | sed 's/://')


lint: lint_dockerfile lint_markdown ## Lint dockerfile and markdown

lint_markdown: ## Lint markdown
	docker run --rm -i -v $(CURDIR):/work tmknom/markdownlint-cli

lint_dockerfile: ## Lint dockerfile
	docker run --rm -i hadolint/hadolint < Dockerfile

build: ## Build docker
	docker build -t tmknom/markdownlint-cli .

# https://postd.cc/auto-documented-makefile/
help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
