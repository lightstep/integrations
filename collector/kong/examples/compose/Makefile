
KONG_CONF_LOCAL := kong.conf
KONG_DECLARATIVE_CONFIG_LOCAL := kong.yml
KONG_CONF_REMOTE := /etc/kong/kong.conf
KONG_DECLARATIVE_CONFIG_REMOTE := /etc/kong/kong.yml
KONG_IMAGE := kong:latest

.DEFAULT_GOAL := run

up:
	docker-compose up -d --build kong-gateway
	sleep 5
	docker-compose up -d --build client
	sleep 5
	docker-compose up -d --build otel-collector

## run: Run the kong-gateway, client and otel-collector containers (default goal)
.PHONY: run
run: up

## check: Check kong.conf and kong.yml
check:
	# check the kong.conf
	docker run --rm -v $(PWD)/$(KONG_CONF_LOCAL):$(KONG_CONF_REMOTE) \
		$(KONG_IMAGE) kong check $(KONG_CONF_REMOTE)
	# check the kong.yml parsing with kong.conf
	docker run --rm -v $(PWD)/$(KONG_CONF_LOCAL):$(KONG_CONF_REMOTE) \
		-v $(PWD)/$(KONG_DECLARATIVE_CONFIG_LOCAL):$(KONG_DECLARATIVE_CONFIG_REMOTE) \
		$(KONG_IMAGE) kong config -c $(KONG_CONF_REMOTE) parse $(KONG_DECLARATIVE_CONFIG_REMOTE)

## shell: /bin/bash in the kong container
shell:
	docker-compose exec kong-gateway /bin/bash

_curl-config:
	curl -i -X GET http://localhost:8001/config

_curl-routes:
	curl -i -X GET http://localhost:8001/routes

## curl: curls the config and routes
curl: _curl-config _curl-routes

down:
	docker-compose down --remove-orphans

clean:
	docker-compose rm -f

## stop: Stop services
stop:
	docker-compose stop

## start: Start services
start:
	docker-compose start

## reload: Tear it down and bring it back up
reload: down up

# appends help from this Makefile to the README.md
# TODO integrate this in assembling README, so no manual follow up is required
doc:
	@echo "## Makefile targets" >> README.md
	@echo "" >> README.md
	@sed -n 's/^##//p' $(MAKEFILE_LIST) | column -t -s ':' |  sed -e 's/^/ /' >> README.md

# a rule that reads comments from the Makefile and prints them as help
# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
# https://stackoverflow.com/questions/3572030/how-to-make-a-simple-makefile#comment-3572030_3572030
# to use it, add a comment starting with ## before a target
## help: Show this help.
help: ## Show this help.
	@echo "Usage: make <target>"
	@echo "Targets:"
	@sed -n 's/^##//p' $(MAKEFILE_LIST) | column -t -s ':' |  sed -e 's/^/ /'
