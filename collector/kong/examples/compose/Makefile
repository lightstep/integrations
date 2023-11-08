
# keep this first if you add rules, so service files don't
# have to update rule names
run: systemd-job-service 

systemd-job-service:
	docker-compose up kong-database -d
	docker-compose up kong-db-init -d
	docker-compose up kong-gateway -d
	docker-compose up client -d
	docker-compose up otel-collector

