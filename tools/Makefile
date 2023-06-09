
.PHONY: pip-install
pip-install:
	pip install -r python/requiremenets.txt

generate-csv:
	docker run -v ./../:/integrations/ golang:1.20.5 go run /integrations/tools/cmd/logs2metricstables/main.go

generate-dashboard:
	docker run -v ./../:/integrations/ -w /integrations/tools/ golang:1.20.5 go run /integrations/tools/cmd/metricstable2dashboard/main.go
