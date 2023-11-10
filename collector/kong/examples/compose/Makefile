
systemd-job-service:
	docker-compose up -d kong-database
	docker-compose up -d kong-db-init
	docker-compose up -d kong-gateway
	docker-compose up -d client
	docker-compose up -d otel-collector

