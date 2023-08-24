# Makefile for setting up Ghostunnel with Prometheus metrics and OTel Collector

.PHONY: certs build run stop clean

CERT_DIR := certs

# Generates necessary certificates for Ghostunnel
certs:
	@mkdir -p $(CERT_DIR)
	openssl genpkey -algorithm RSA -out $(CERT_DIR)/ca-key.pem
	openssl req -new -x509 -key $(CERT_DIR)/ca-key.pem -out $(CERT_DIR)/ca-cert.pem -days 3650 -subj "/C=US/ST=ExampleState/L=ExampleCity/O=ExampleOrg/OU=ExampleUnit/CN=ca.example.com"
	openssl genpkey -algorithm RSA -out $(CERT_DIR)/server-key.pem
	openssl req -new -key $(CERT_DIR)/server-key.pem -out $(CERT_DIR)/server-req.csr -subj "/C=US/ST=ExampleState/L=ExampleCity/O=ExampleOrg/OU=ExampleUnit/CN=server.example.com"
	openssl x509 -req -in $(CERT_DIR)/server-req.csr -CA $(CERT_DIR)/ca-cert.pem -CAkey $(CERT_DIR)/ca-key.pem -CAcreateserial -out $(CERT_DIR)/server-cert.pem -days 365
	openssl genpkey -algorithm RSA -out $(CERT_DIR)/client-key.pem
	openssl req -new -key $(CERT_DIR)/client-key.pem -out $(CERT_DIR)/client-req.csr -subj "/C=US/ST=ExampleState/L=ExampleCity/O=ExampleOrg/OU=ExampleUnit/CN=client.example.com"
	openssl x509 -req -in $(CERT_DIR)/client-req.csr -CA $(CERT_DIR)/ca-cert.pem -CAkey $(CERT_DIR)/ca-key.pem -CAcreateserial -out $(CERT_DIR)/client-cert.pem -days 365
	openssl pkcs12 -export -in $(CERT_DIR)/server-cert.pem -inkey $(CERT_DIR)/server-key.pem -out $(CERT_DIR)/server-keystore.p12 -password pass:password
	openssl pkcs12 -export -in $(CERT_DIR)/client-cert.pem -inkey $(CERT_DIR)/client-key.pem -out $(CERT_DIR)/client-keystore.p12 -password pass:password

# Build Docker images for Ghostunnel
build:
	docker-compose build

# Start Ghostunnel and OTel Collector services
run:
	docker-compose up -d

# Stop services
stop:
	docker-compose down

# Cleanup generated certificates
clean:
	rm -rf $(CERT_DIR)

# Full setup (generate certs, build images, run services)
all: certs build run
