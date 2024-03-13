.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?# .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":[^#]*? #| #"}; {printf "%-57s%s\n", $$1 $$3, $$2}'

# Bootstrap
.PHONY: bootstrap bs
bootstrap: 
	@./scripts/bootstrap.sh
bs: 
	@$(MAKE) bootstrap


#  local host web を想定
.PHONY: front-start
front-start:
	cd apps/lib && flutter run -d chrome --web-browser-flag "--disable-web-security"


