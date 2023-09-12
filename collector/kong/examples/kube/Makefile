
all: setup install-all

setup: create-cluster
install-all: install-kong install-collector

create-cluster:
	kind create cluster --name kong --config kind-config.yaml

delete-cluster:
	kind delete cluster --name kong

install-kong:
	kubectl create namespace kong
	kubectl create secret generic kong-enterprise-license --from-literal=license="'{}'" -n kong --dry-run=client -o yaml | kubectl apply -f -
	kubectl apply -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/v2.11.0/deploy/single/all-in-one-dbless-k4k8s-enterprise.yaml
	kubectl apply -f metrics-service.yaml

install-collector:
	./install_collector.sh
