# Unique random ID encoded in resource names, will be set on first apply and
# used for all subsequent operations.
# Doesn't matter if you put something you choose here. You need to reset this
# after the first run.
PROJECT_ID = 4a9023

# Collector image
COLLECTOR_IMAGE = nathanslaughter/otelcontribcol-exp:latest
LOCAL_COLLECTOR_NAME = "local_bridge_collector"

# TODO:
# a) set these to container registry and image names
# b) update settings for container apps to pull from same place
REGISTRY_NAME := <registry-name>
REMOTE_REGISTRY := <remote-registry-url>

IMAGE_OTELCOL := <otelcol-image-name>
IMAGE_SCC := <scc-image-name>
TAG_OTELCOL := <otelcol-image-tag>
TAG_SCC := <scc-image-tag>

# List of valid ENV values
VALID_ENVS = staging meta public
# default ENV
ENV ?= staging

# List of all tools
TOOLS = az terraform tflint aztfexport

# Terraform commands are executed in the terraform/environments/$(ENV) directory
TF_DIR := terraform
TF_ENV_DIR := environments/$(ENV)
TF_VARS := $(TF_ENV_DIR)/terraform.tfvars
TF_PLAN := $(TF_ENV_DIR)/terraform.tfplan
TF_STATE := $(TF_DIR)/terraform.tfstate

# require AZTFX_RG and AZTFX_DIR - this for exporting
AZTFX_RG := $(shell echo $$AZTFX_RG)
AZTFX_DIR := _export_$(shell echo $$AZTFX_DIR)
AZTFX_FLAGS := --parallelism 1 --non-interactive --provider-version 3.93.0 --continue --include-role-assignment --output-dir $(AZTFX_DIR)

# filesets
TFLINT_CACHE = .tflint.d
TF_CLEAN_FILES = *.tfstate *.tfstate.backup .terraform $(TF_DIR)/{*.tfstate*,.terraform.lock.hcl} $(TF_DIR)/$(TF_ENV_DIR)/{*.tfstate*,.terraform.lock.hcl}

######################################################################
# Project level rules - run in the ./terraform directory
######################################################################

all: check plan apply upload-collector-configs

.PHONY: login
login:
	@echo "Logging in to Azure"
	az login

.PHONY: check
check: fmt validate lint


######################################################################
# Environment level rules - run in $(TF_ENV_DIR) which is defined
# 	as ./terraform/environments/$(ENV)
######################################################################

.PHONY: init
init:
	@echo "Initializing Terraform for environment $(ENV)..."
	cd $(TF_DIR) && terraform init

.PHONY: fmt
fmt:
	@echo "Formatting Terraform configurations..."
	cd $(TF_DIR) && terraform fmt --recursive .

.PHONY: validate
validate: init
	@echo "Validating Terraform configurations..."
	cd $(TF_DIR) && terraform validate

.PHONY: lint
lint:
	cd $(TF_DIR) && tflint --init && tflint

# $(TF_PLAN): init
.PHONY: plan
plan:
	@echo "Creating Terraform plan for environment $(ENV)..."
	cd $(TF_DIR) && terraform plan -var-file=$(TF_VARS) -out=$(TF_PLAN)

# NOTE: our version of apply runs another plan before applying
# Keep in mind this is just for development and prototyping work.
.PHONY: apply
apply:
	@echo "Applying Terraform plan for environment $(ENV)..."
	# TODO: make sure we have plan
	cd $(TF_DIR) && terraform apply -auto-approve $(TF_PLAN)

destroy:
	@echo "Destroying infrastructure for environment $(ENV)..."
	cd $(TF_DIR) && terraform destroy -var-file=$(TF_VARS) -lock=false

output:
	@echo "Showing Terraform outputs for environment $(ENV)..."
	cd $(TF_DIR) && terraform output

show-eventhub-connection:
	cd $(TF_DIR) && terraform output eventhub_connection_string

show-storage-account-connection:
	cd $(TF_DIR) && terraform output storage_account_connection_string

show-connection-strings: show-eventhub-connection show-storage-account-connection

.PHONY: clean
clean: destroy

# extra clean
.PHONY: distclean
distclean: clean
	@echo "Cleaning up Terraform files for environment $(ENV)..."
	cd $(TF_DIR) && rm -rf $(TFLINT_CACHE) $(TF_CLEAN_FILES) $(TF_PLAN)

.PHONY: export
export:
	aztfexport resource-group $(AZTFX_FLAGS) $(AZTFX_RG)

#############################
# Development workflow setup
#############################

# Check if tool is installed
define check_tool
	@command -v $(1) >/dev/null 2>&1 && echo $(1): `which $(1)` || echo $(1): UNINSTALLED
endef

check-tools:
	$(foreach tool,$(TOOLS),$(call check_tool,$(tool));)

# Check if tool is installed
define check_tool
	@command -v $(1) >/dev/null 2>&1 || (echo "Error: $(1) is not installed. Please install $(1)." && exit 1)
endef

# Check tools before running a target
define check_tools_before_target
	$(foreach tool,$(1),$(call check_tool,$(tool));)
endef

.PHONY: run-collector
# Check if ENV is valid
check-env:
	@if ! echo " $(VALID_ENVS) " | grep -q " $(ENV) "; then \
		echo "Error: Invalid ENV value. ENV must be one of: $(VALID_ENVS)"; \
		exit 1; \
	fi

.PHONY: refresh
refresh: plan
	@echo "Applying Terraform plan for environment $(ENV)..."
	cd $(TF_DIR) && terraform apply -refresh-only -auto-approve $(TF_PLAN)

# Build and push to ACR
# docker-build-and-push:
# 	docker build -t $(REGISTRY_NAME).azurecr.io/$(IMAGE_OTELCOL):$(TAG_OTELCOL) .
# 	az acr login --name $(REGISTRY_NAME)
# 	docker push $(REGISTRY_NAME).azurecr.io/$(IMAGE_OTELCOL):$(TAG_OTELCOL)

# Pull from another registry and push to ACR
.PHONY: docker-pull-and-push
docker-pull-and-push:
	docker pull $(REMOTE_REGISTRY)/$(IMAGE_SCC):$(TAG_SCC)
	docker tag $(REMOTE_REGISTRY)/$(IMAGE_SCC):$(TAG_SCC) $(REGISTRY_NAME).azurecr.io/$(IMAGE_SCC):$(TAG_SCC)
	az acr login --name $(REGISTRY_NAME)
	docker push $(REGISTRY_NAME).azurecr.io/$(IMAGE_SCC):$(TAG_SCC)

.PHONY: upload-collector-configs
upload-collector-configs:
	az storage file upload \
		--share-name staging-sgc-otelcol-cfg-share-$(PROJECT_ID) \
		--source collector-configs/eventhub-only.yaml \
		--account-name sccstagingsa$(PROJECT_ID) \
		--auth-mode login \
		--enable-file-backup-request-intent \
		--account-key $(shell az storage account keys list --account-name sccstagingsa$(PROJECT_ID) --query '[0].value' -o tsv)
	az storage file upload \
		--share-name staging-sgc-scc-cfg-share-$(PROJECT_ID) \
		--source scc-config/config.yaml \
		--account-name sccstagingsa$(PROJECT_ID) \
		--auth-mode login \
		--enable-file-backup-request-intent \
		--account-key $(shell az storage account keys list --account-name sccstagingsa$(PROJECT_ID) --query '[0].value' -o tsv)

		make restart-collector

restart-collector:
	@echo For new config files to take effect, you must restart the collector
	@echo in the portal.
