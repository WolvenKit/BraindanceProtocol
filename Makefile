DIR := ${CURDIR}
.DEFAULT_GOAL := help
.PHONY: package

package: ## Package the project
	bash tools/cybermods.sh
	bash tools/nexus.sh

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sed 's/Makefile://' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
