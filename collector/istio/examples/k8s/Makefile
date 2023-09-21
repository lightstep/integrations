kind := $(shell command -v kind 2> /dev/null)
docker := $(shell command -v docker 2> /dev/null)
@kubectl := $(shell command -v kubectl 2> /dev/null)
@kill := $(shell command -v kill 2> /dev/null)
@curl := $(shell command -v curl 2> /dev/null)
@lsof := $(shell command -v lsof 2> /dev/null)

CLUSTER_NAME := "go-istio-cluster"
CLUSTER_CONFIG := "kind-config.yaml"
IMAGE_NAME := "go-istio-demo"
IMAGE_TAG := "latest"

.PHONY: all
all: create-cluster deploy-image deploy-otel deploy-isito-telemetry

.PHONY: create-cluster
create-cluster:
	@echo "Creating cluster..."
	@kind create cluster --name $(CLUSTER_NAME) --config $(CLUSTER_CONFIG)

.PHONY: delete-cluster
delete-cluster:
	@echo "Deleting cluster..."
	@kind delete cluster --name $(CLUSTER_NAME)

.PHONY: build-image
build-image:
	@echo "Building image..."
	@docker build -t $(IMAGE_NAME) .

.PHONY: load-image
load-image:
	@echo "Loading image..."
	@kind load docker-image $(IMAGE_NAME):$(IMAGE_TAG) --name $(CLUSTER_NAME)

.PHONY: deploy-image
deploy-image: build-image load-image
	@echo "Deploying image..."
	@kubectl apply -f go-istio-demo.yaml

.PHONY: undeploy-image
undeploy-image:
	@echo "Undeploying image..."
	@kubectl delete -f go-istio-demo.yaml

.PHONY: deploy-otel
deploy-otel:
	@echo "Deploying OpenTelemetry..."
	@kubectl apply -f lightstep-secret.yaml
	@kubectl apply -f otel-collector-service.yaml
	@kubectl apply -f otel-collector-rbac.yaml
	@kubectl apply -f otel-collector-configmap.yaml
	@kubectl apply -f otel-collector-deployment.yaml

.PHONY: undeploy-otel
undeploy-otel:
	@echo "Undeploying OpenTelemetry..."
	@kubectl delete -f otel-collector-deployment.yaml
	@kubectl delete -f otel-collector-configmap.yaml
	@kubectl delete -f otel-collector-rbac.yaml
	@kubectl delete -f otel-collector-service.yaml
	@kubectl delete -f lightstep-secret.yaml

.PHONY: deploy-isito-telemetry
deploy-isito-telemetry:
	@echo "Deploying Istio..."
	@kubectl apply -f istio-telemetry.yaml

.PHONY: undeploy-istio-telemetry
undeploy-istio-telemetry:
	@echo "Undeploying Istio..."
	@kubectl delete -f istio-telemetry.yaml

.PHONY: test
test:
	@echo "Testing..."
	@kubectl -n go-istio-demo port-forward svc/go-istio-demo 8080:80 &
	@curl -s http://localhost:8080/healthz | jq
	@kill -9 $(lsof -t -i:8080)
