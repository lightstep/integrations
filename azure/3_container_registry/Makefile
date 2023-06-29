
.PHONY: run
run: apply-terraform run-collector

.PHONY: stop
stop: stop-collector destroy-terraform

.PHONY: get-logs
get-logs:
	docker logs azure-collector-registry >& ../dashboards/containerregistry_registries/logs.txt

.PHONY: apply-terraform
apply-terraform:
	terraform init && terraform apply --auto-approve

.PHONY: destroy-terraform
destroy-terraform:
	terraform destroy --auto-approve

.PHONY: run-collector
run-collector:
	docker run -d --name=azure-collector-registry -v ./:/conf/ -e AZURE_CLIENT_ID=${AZURE_CLIENT_ID} -e AZURE_CLIENT_SECRET=${AZURE_CLIENT_SECRET} -e AZURE_SUBSCRIPTION_ID=${AZURE_SUBSCRIPTION_ID} -e AZURE_TENANT_ID=${AZURE_TENANT_ID} -e LS_ACCESS_TOKEN=${LS_ACCESS_TOKEN} otel/opentelemetry-collector-contrib:0.79.0 --config=/conf/collector.yaml

.PHONY: stop-collector
stop-collector:
	docker rm -f azure-collector-registry
