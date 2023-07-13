## Integrations

```shell
go build .
```

```shell
./integrations init --spec=./spec.yaml
```

### Scaffolding the Spec

```shell
{{servicename}}
|- README.md
|- examples/
   |- compose/
      |- docker-compose.yml
      |- collector.yml
   |- helm/
      |- Values.yaml
      |- Chart.yaml
      |- templates/
   |- k8s
      |- templates/
|- dashboards/
   |- overview/
      |- main.tf
|- alerts
   |- mem/
|- images/
   |- dashboards-overview.png
```