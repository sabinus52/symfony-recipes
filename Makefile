## Commands from generate recipes
## ------------------------------
##


.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<
	@/bin/echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/  \\x1b[36m\1\\x1b[m:\2/' | column -c2 -t -s :)"
	@echo ""


.PHONY: generate
generate: ## Generate endpoint
	@echo "----- Check manifests -----"
	@recipes-checker lint:manifests
	@echo "----- Generate endpoint -----"
	@git ls-tree HEAD */*/* | recipes-checker generate:flex-endpoint sabinus52/symfony-recipes master master .
